module Spree
  module LogEntryDecorator
    def parsed_details
      @details ||= YAML.safe_load(details, aliases: true, permitted_classes: [
                                    Braintree::Errors,
                                    Braintree::ErrorResult,
                                    ActiveMerchant::Billing::Response,
                                    Braintree::Gateway,
                                    Braintree::Configuration,
                                    Logger,
                                    Logger::Formatter,
                                    Logger::LogDevice,
                                    IO,
                                    Monitor,
                                    Symbol,
                                    Braintree::GraphQLClient,
                                    Braintree::ValidationErrorCollection,
                                    Braintree::ValidationError,
                                    Braintree::SuccessfulResult,
                                    Braintree::Transaction,
                                    BigDecimal, Time,
                                    Braintree::Transaction::StatusDetails,
                                    Braintree::Descriptor,
                                    Braintree::Transaction::DisbursementDetails,
                                    Braintree::RiskData,
                                    Braintree::Transaction::CreditCardDetails,
                                    Braintree::Transaction::SubscriptionDetails,
                                    Braintree::Transaction::CustomerDetails,
                                    Braintree::Transaction::AddressDetails,
                                    Braintree::Transaction::LocalPaymentDetails,
                                    Braintree::Transaction::PayPalDetails,
                                    Braintree::Transaction::PayPalHereDetails,
                                    Braintree::Transaction::ApplePayDetails,
                                    Braintree::Transaction::GooglePayDetails,
                                    Braintree::Transaction::VenmoAccountDetails,
                                    Braintree::Transaction::VisaCheckoutCardDetails,
                                    Braintree::Transaction::SamsungPayCardDetails,
                                    Thread::Mutex,
                                  ])
    end
  end
end
::Spree::LogEntry.prepend(Spree::LogEntryDecorator)
