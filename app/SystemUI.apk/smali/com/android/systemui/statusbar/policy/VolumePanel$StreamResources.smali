.class final enum Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

.field public static final enum NotificationStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

.field public static final enum RingerStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

.field public static final enum SystemStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

.field public static final enum VoiceStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;


# instance fields
.field iconMuteRes:I

.field iconRes:I

.field iconVibrateRes:I

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const v7, 0x7f020265

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v3, 0x6

    const v4, 0x7f020263

    const v5, 0x7f020264

    const v6, 0x7f020263

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    .line 44
    new-instance v3, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    const-string v4, "VoiceStream"

    move v5, v10

    move v6, v2

    move v8, v7

    move v9, v7

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    .line 48
    new-instance v3, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    const-string v4, "NotificationStream"

    const/4 v6, 0x5

    const v7, 0x7f020267

    const v8, 0x7f020269

    const v9, 0x7f020268

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    .line 52
    new-instance v3, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    const-string v4, "SystemStream"

    const v7, 0x7f02026d

    const v8, 0x7f02026f

    const v9, 0x7f02026e

    move v5, v12

    move v6, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    .line 56
    new-instance v3, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    const-string v4, "RingerStream"

    const/4 v5, 0x4

    const v7, 0x7f02026a

    const v8, 0x7f020266

    const v9, 0x7f020270

    move v6, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    sget-object v1, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    aput-object v1, v0, v12

    const/4 v1, 0x4

    sget-object v2, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->$VALUES:[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .param p3, "streamType"    # I
    .param p4, "iconRes"    # I
    .param p5, "iconMuteRes"    # I
    .param p6, "iconVibrateRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->streamType:I

    .line 68
    iput p4, p0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->iconRes:I

    .line 69
    iput p5, p0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->iconMuteRes:I

    .line 70
    iput p6, p0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->iconVibrateRes:I

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->$VALUES:[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    return-object v0
.end method
