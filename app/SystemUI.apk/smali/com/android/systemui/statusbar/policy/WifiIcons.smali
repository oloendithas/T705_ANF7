.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

.field static final WIFI_SIGNAL_STRENGTH_LGT:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 22
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 36
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    .line 50
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

    .line 64
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    .line 78
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    .line 22
    :array_0
    .array-data 4
        0x7f02015f
        0x7f020161
        0x7f020163
        0x7f020165
        0x7f020167
    .end array-data

    :array_1
    .array-data 4
        0x7f02015f
        0x7f020161
        0x7f020163
        0x7f020165
        0x7f020167
    .end array-data

    .line 36
    :array_2
    .array-data 4
        0x7f020159
        0x7f02015a
        0x7f02015b
        0x7f02015c
        0x7f02015d
    .end array-data

    :array_3
    .array-data 4
        0x7f020159
        0x7f02015a
        0x7f02015b
        0x7f02015c
        0x7f02015d
    .end array-data

    .line 50
    :array_4
    .array-data 4
        0x7f020160
        0x7f020162
        0x7f020164
        0x7f020166
        0x7f020168
    .end array-data

    :array_5
    .array-data 4
        0x7f020160
        0x7f020162
        0x7f020164
        0x7f020166
        0x7f020168
    .end array-data

    .line 64
    :array_6
    .array-data 4
        0x7f02014e
        0x7f02014f
        0x7f020150
        0x7f020151
        0x7f020152
    .end array-data

    :array_7
    .array-data 4
        0x7f02014e
        0x7f02014f
        0x7f020150
        0x7f020151
        0x7f020152
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
