.class final Landroid/provider/GeocodedLocation$PhoneNumber;
.super Ljava/lang/Object;
.source "GeocodedLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/GeocodedLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PhoneNumber"
.end annotation


# instance fields
.field private actualNumber:Ljava/lang/String;

.field private type:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "actualNumber"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Landroid/provider/GeocodedLocation$PhoneNumber;->type:I

    .line 190
    iput-object p2, p0, Landroid/provider/GeocodedLocation$PhoneNumber;->actualNumber:Ljava/lang/String;

    .line 191
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/GeocodedLocation$PhoneNumber;
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {p0, p1}, Landroid/provider/GeocodedLocation$PhoneNumber;->getActualPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/GeocodedLocation$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/provider/GeocodedLocation$PhoneNumber;)I
    .registers 2
    .param p0, "x0"    # Landroid/provider/GeocodedLocation$PhoneNumber;

    .prologue
    .line 184
    iget v0, p0, Landroid/provider/GeocodedLocation$PhoneNumber;->type:I

    return v0
.end method

.method static synthetic access$200(Landroid/provider/GeocodedLocation$PhoneNumber;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/provider/GeocodedLocation$PhoneNumber;

    .prologue
    .line 184
    iget-object v0, p0, Landroid/provider/GeocodedLocation$PhoneNumber;->actualNumber:Ljava/lang/String;

    return-object v0
.end method

.method private static getActualPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/GeocodedLocation$PhoneNumber;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, "phoneNumber":Landroid/provider/GeocodedLocation$PhoneNumber;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 198
    const-string v3, "cn"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 200
    invoke-static {p1}, Landroid/provider/GeocodedLocation$PhoneNumber;->getChineseActualPhoneNumber(Ljava/lang/String;)Landroid/provider/GeocodedLocation$PhoneNumber;

    move-result-object v2

    .line 215
    :cond_1b
    :goto_1b
    return-object v2

    .line 206
    :cond_1c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 207
    .local v1, "locale":Ljava/util/Locale;
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 209
    invoke-static {p1}, Landroid/provider/GeocodedLocation$PhoneNumber;->getChineseActualPhoneNumber(Ljava/lang/String;)Landroid/provider/GeocodedLocation$PhoneNumber;

    move-result-object v2

    goto :goto_1b
.end method

.method private static getChineseActualPhoneNumber(Ljava/lang/String;)Landroid/provider/GeocodedLocation$PhoneNumber;
    .registers 11
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/16 v7, 0x30

    const/4 v6, 0x0

    .line 227
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_3a

    .line 228
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0xb

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "suffix":Ljava/lang/String;
    const-string v4, "13"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_30

    const-string v4, "15"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_30

    const-string v4, "18"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 231
    :cond_30
    new-instance v4, Landroid/provider/GeocodedLocation$PhoneNumber;

    invoke-virtual {v3, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Landroid/provider/GeocodedLocation$PhoneNumber;-><init>(ILjava/lang/String;)V

    .line 260
    .end local v3    # "suffix":Ljava/lang/String;
    :goto_39
    return-object v4

    .line 236
    :cond_3a
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 237
    .local v1, "chars":[C
    const/4 v0, -0x1

    .line 238
    .local v0, "areaCodeIndex":I
    array-length v4, v1

    if-gt v4, v9, :cond_48

    aget-char v4, v1, v6

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_81

    .line 239
    :cond_48
    array-length v4, v1

    add-int/lit8 v4, v4, -0xc

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 240
    .local v2, "index":I
    :goto_4f
    array-length v4, v1

    add-int/lit8 v4, v4, -0x6

    if-gt v2, v4, :cond_5f

    .line 241
    aget-char v4, v1, v2

    if-ne v4, v7, :cond_7e

    add-int/lit8 v4, v2, 0x1

    aget-char v4, v1, v4

    if-eq v4, v7, :cond_7e

    .line 242
    move v0, v2

    .line 249
    .end local v2    # "index":I
    :cond_5f
    :goto_5f
    const/4 v4, -0x1

    if-eq v0, v4, :cond_9b

    .line 250
    add-int/lit8 v4, v0, 0x1

    aget-char v4, v1, v4

    const/16 v5, 0x31

    if-eq v4, v5, :cond_72

    add-int/lit8 v4, v0, 0x1

    aget-char v4, v1, v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_8f

    .line 252
    :cond_72
    new-instance v4, Landroid/provider/GeocodedLocation$PhoneNumber;

    add-int/lit8 v5, v0, 0x3

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Landroid/provider/GeocodedLocation$PhoneNumber;-><init>(ILjava/lang/String;)V

    goto :goto_39

    .line 240
    .restart local v2    # "index":I
    :cond_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 246
    .end local v2    # "index":I
    :cond_81
    array-length v4, v1

    const/4 v5, 0x6

    if-lt v4, v5, :cond_5f

    aget-char v4, v1, v6

    if-ne v4, v7, :cond_5f

    aget-char v4, v1, v8

    if-eq v4, v7, :cond_5f

    .line 247
    const/4 v0, 0x0

    goto :goto_5f

    .line 256
    :cond_8f
    new-instance v4, Landroid/provider/GeocodedLocation$PhoneNumber;

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Landroid/provider/GeocodedLocation$PhoneNumber;-><init>(ILjava/lang/String;)V

    goto :goto_39

    .line 260
    :cond_9b
    const/4 v4, 0x0

    goto :goto_39
.end method
