require 'sidekiq/batch'
module SidekiqBatchUi
  class SidekiqBatchesController < ApplicationController
    def index
      redis = Sidekiq.redis { |r| r.smembers('b-ids') }
      @batches = redis.map do |bid|
        data = Sidekiq.redis { |r| r.hgetall("b-#{bid}") }
        {
          id: bid,
          description: data['description'],
          created_at: Time.at(data['created_at'].to_i),
          total: data['total'].to_i,
          pending: data['pending'].to_i
        }
      end.sort_by { |b| b[:created_at] }.reverse
    end

    def show
      @bid = params[:id]
      @meta = Sidekiq.redis { |r| r.hgetall("b-#{@bid}") }
      @jobs = Sidekiq.redis { |r| r.smembers("b-#{@bid}-jids") }

      @errors = Sidekiq.redis { |r| r.hgetall("b-#{@bid}-errors") }
      @callbacks = Sidekiq.redis { |r| r.lrange("b-#{@bid}-callbacks", 0, -1) }
    end
  end
end
