.class public Landroid/os/BatteryProperties;
.super Ljava/lang/Object;
.source "BatteryProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/BatteryProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public batteryChargeCounter:I

.field public batteryChargeType:I

.field public batteryCurrentAvg:I

.field public batteryCurrentNow:I

.field public batteryHealth:I

.field public batteryLevel:I

.field public batteryOnline:I

.field public batteryPowerSharingOnline:Z

.field public batteryPresent:Z

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperature:I

.field public batteryVoltage:I

.field public chargerAcOnline:Z

.field public chargerPogoOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    new-instance v0, Landroid/os/BatteryProperties$1;

    invoke-direct {v0}, Landroid/os/BatteryProperties$1;-><init>()V

    sput-object v0, Landroid/os/BatteryProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7d

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7f

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_81

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_83

    move v0, v1

    :goto_33
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryOnline:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeType:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_85

    move v0, v1

    :goto_72
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_87

    :goto_7a
    iput-boolean v1, p0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    .line 66
    return-void

    :cond_7d
    move v0, v2

    .line 49
    goto :goto_c

    :cond_7f
    move v0, v2

    .line 50
    goto :goto_15

    :cond_81
    move v0, v2

    .line 51
    goto :goto_1e

    :cond_83
    move v0, v2

    .line 54
    goto :goto_33

    :cond_85
    move v0, v2

    .line 64
    goto :goto_72

    :cond_87
    move v1, v2

    .line 65
    goto :goto_7a
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/BatteryProperties$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/os/BatteryProperties$1;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/os/BatteryProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_69

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_6b

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_6d

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    if-eqz v0, :cond_6f

    move v0, v1

    :goto_29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Landroid/os/BatteryProperties;->batteryOnline:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Landroid/os/BatteryProperties;->batteryChargeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    if-eqz v0, :cond_71

    move v0, v1

    :goto_5e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    if-eqz v0, :cond_73

    :goto_65
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return-void

    :cond_69
    move v0, v2

    .line 69
    goto :goto_7

    :cond_6b
    move v0, v2

    .line 70
    goto :goto_f

    :cond_6d
    move v0, v2

    .line 71
    goto :goto_17

    :cond_6f
    move v0, v2

    .line 74
    goto :goto_29

    :cond_71
    move v0, v2

    .line 84
    goto :goto_5e

    :cond_73
    move v1, v2

    .line 85
    goto :goto_65
.end method
