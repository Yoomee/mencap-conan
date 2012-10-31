unless (Rails.env.development? || Rails.env.test?)
  MencapConan::Application.config.middleware.use ExceptionNotifier,
    :email_prefix => "[MENCAP CONAN] ",
    :sender_address => "notifier <notifier@conan.yoomee.com>",
    :exception_recipients => %w{developers@yoomee.com}
end