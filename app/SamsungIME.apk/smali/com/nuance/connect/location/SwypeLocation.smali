.class public Lcom/nuance/connect/location/SwypeLocation;
.super Ljava/lang/Object;
.source "SwypeLocation.java"


# instance fields
.field private address:Landroid/location/Address;

.field private addressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private adminArea:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private locality:Ljava/lang/String;

.field private location:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocation;->countryCode:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocation;->adminArea:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocation;->locality:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocation;->location:Landroid/location/Location;

    .line 25
    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocation;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public getAddress()Landroid/location/Address;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocation;->address:Landroid/location/Address;

    return-object v0
.end method

.method public getAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocation;->addressList:Ljava/util/List;

    return-object v0
.end method

.method public getAdminArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocation;->adminArea:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocation;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocation;->locality:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocation;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocation;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocation;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public setAddress(Landroid/location/Address;)V
    .locals 1
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocation;->address:Landroid/location/Address;

    .line 46
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocation;->countryCode:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocation;->adminArea:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/location/SwypeLocation;->locality:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setAddressList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocation;->addressList:Ljava/util/List;

    .line 53
    return-void
.end method

.method public setAdminArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "adminArea"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocation;->adminArea:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocation;->countryCode:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setLocality(Ljava/lang/String;)V
    .locals 0
    .param p1, "locality"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocation;->locality:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocation;->location:Landroid/location/Location;

    .line 29
    return-void
.end method
