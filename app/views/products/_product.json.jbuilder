# frozen_string_literal: true

json.extract! product, :id, :name, :description, :picture, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
