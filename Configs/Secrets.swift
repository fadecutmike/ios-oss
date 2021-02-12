public enum Secrets {
  public static let isOSS = false
  public static let fieldReportEmail = "hello@email.com"

  public enum Api {
    public enum Client {
      public static let production = "deadbeef"
      public static let staging = "beefdead"
    }

    public enum Endpoint {
      public static let production = "api.com"
      public static let staging = "api.staging"
      public static let development = "api.development"
    }
  }

  public enum AppCenter {
    public static let alpha = "alpha"
    public static let beta = "beta"
  }

  public enum BasicHTTPAuth {
    public static let username = "usr"
    public static let password = "pswd"
  }

  public enum KoalaEndpoint {
    public static let staging = "staging"
    public static let production = "production"
  }

  public enum LakeEndpoint {
    public static let staging = "staging"
    public static let production = "production"
  }

  public enum Segment {
    public static let staging = "write-key"
    public static let production = "write-key"
  }

  public enum Qualtrics {
    public static let brandId = "brandId"
    public static let zoneId = "zoneId"
  }

  public enum StripePublishableKey {
    public static let staging = "deadbeef"
    public static let production = "beefdead"
  }

 public enum OptimizelySDKKey {
    public static let production = "production"
    public static let staging = "staging"
    public static let development = "development"
  }

  public enum WebEndpoint {
    public static let production = "www.kickstarter.com"
    public static let staging = "staging.com"
    public static let development = "development.kickstarter.com"
  }

  public enum ApplePay {
    public static let merchantIdentifier = "merchant.kickstarter"
  }
}
