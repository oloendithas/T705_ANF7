.class public final Lcom/android/systemui/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Clock:[I

.field public static final Clock_ampmSmall:I = 0x0

.field public static final DeadZone:[I

.field public static final DeadZone_decayTime:I = 0x3

.field public static final DeadZone_holdTime:I = 0x2

.field public static final DeadZone_maxSize:I = 0x1

.field public static final DeadZone_minSize:I = 0x0

.field public static final DeadZone_orientation:I = 0x4

.field public static final KeyButtonView:[I

.field public static final KeyButtonView_glowBackground:I = 0x2

.field public static final KeyButtonView_keyCode:I = 0x0

.field public static final KeyButtonView_keyRepeat:I = 0x1

.field public static final NotificationLinearLayout:[I

.field public static final NotificationLinearLayout_insetLeft:I

.field public static final NotificationRowLayout:[I

.field public static final NotificationRowLayout_rowHeight:I

.field public static final RecentsPanelView:[I

.field public static final RecentsPanelView_recentItemLayout:I

.field public static final ToggleSlider:[I

.field public static final ToggleSlider_text:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37129
    new-array v0, v3, [I

    const v1, 0x7f01000b

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->Clock:[I

    .line 37164
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/R$styleable;->DeadZone:[I

    .line 37259
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    .line 37316
    new-array v0, v3, [I

    const v1, 0x7f010004

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->NotificationLinearLayout:[I

    .line 37345
    new-array v0, v3, [I

    const v1, 0x7f010005

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->NotificationRowLayout:[I

    .line 37374
    new-array v0, v3, [I

    const v1, 0x7f010006

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->RecentsPanelView:[I

    .line 37397
    new-array v0, v3, [I

    const v1, 0x7f010003

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->ToggleSlider:[I

    return-void

    .line 37164
    :array_0
    .array-data 4
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000c
    .end array-data

    .line 37259
    :array_1
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
