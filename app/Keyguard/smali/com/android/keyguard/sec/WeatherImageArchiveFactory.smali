.class Lcom/android/keyguard/sec/WeatherImageArchiveFactory;
.super Ljava/lang/Object;
.source "WeatherImageArchiveFactory.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static make(Ljava/lang/String;)Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
    .registers 2
    .param p0, "CPName"    # Ljava/lang/String;

    .prologue
    .line 9
    const-string v0, "Cmaweather"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10
    new-instance v0, Lcom/android/keyguard/sec/CmaWeatherImageArchive;

    invoke-direct {v0}, Lcom/android/keyguard/sec/CmaWeatherImageArchive;-><init>()V

    .line 16
    :goto_d
    return-object v0

    .line 11
    :cond_e
    const-string v0, "kweather"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 12
    new-instance v0, Lcom/android/keyguard/sec/KWeatherImageArchive;

    invoke-direct {v0}, Lcom/android/keyguard/sec/KWeatherImageArchive;-><init>()V

    goto :goto_d

    .line 13
    :cond_1c
    const-string v0, "weathernewsjp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 14
    new-instance v0, Lcom/android/keyguard/sec/JPWeatherImageArchive;

    invoke-direct {v0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;-><init>()V

    goto :goto_d

    .line 16
    :cond_2a
    new-instance v0, Lcom/android/keyguard/sec/AccuWeatherImageArchive;

    invoke-direct {v0}, Lcom/android/keyguard/sec/AccuWeatherImageArchive;-><init>()V

    goto :goto_d
.end method
