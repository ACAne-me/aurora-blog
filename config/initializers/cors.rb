Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'  # 开发阶段可用 *，生产请指定域名
    resource '*',
             headers: :any,
             methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
