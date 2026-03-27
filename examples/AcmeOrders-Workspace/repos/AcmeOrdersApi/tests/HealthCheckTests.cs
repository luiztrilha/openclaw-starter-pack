namespace AcmeOrdersApi.Tests;

public class HealthCheckTests
{
    [Fact]
    public void Status_returns_ok()
    {
        Assert.Equal("ok", AcmeOrdersApi.HealthCheck.Status());
    }
}
