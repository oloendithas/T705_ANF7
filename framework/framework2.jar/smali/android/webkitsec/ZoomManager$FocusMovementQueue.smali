.class Landroid/webkitsec/ZoomManager$FocusMovementQueue;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusMovementQueue"
.end annotation


# static fields
.field private static final QUEUE_CAPACITY:I = 0x5


# instance fields
.field private mIndex:I

.field private mQueue:[F

.field private mSize:I

.field private mSum:F

.field final synthetic this$0:Landroid/webkitsec/ZoomManager;


# direct methods
.method constructor <init>(Landroid/webkitsec/ZoomManager;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1178
    iput-object p1, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mQueue:[F

    .line 1180
    iput v1, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mSize:I

    .line 1181
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mSum:F

    .line 1182
    iput v1, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mIndex:I

    .line 1183
    return-void
.end method

.method static synthetic access$1300(Landroid/webkitsec/ZoomManager$FocusMovementQueue;F)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager$FocusMovementQueue;
    .param p1, "x1"    # F

    .prologue
    .line 1171
    invoke-direct {p0, p1}, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->add(F)V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkitsec/ZoomManager$FocusMovementQueue;)F
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    .prologue
    .line 1171
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->getSum()F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/webkitsec/ZoomManager$FocusMovementQueue;)V
    .registers 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    .prologue
    .line 1171
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->clear()V

    return-void
.end method

.method private add(F)V
    .registers 5
    .param p1, "focusDelta"    # F

    .prologue
    .line 1195
    iget v0, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mSum:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mSum:F

    .line 1196
    iget v0, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mSize:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1f

    .line 1197
    iget v0, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mSize:I

    .line 1201
    :goto_10
    iget-object v0, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mQueue:[F

    iget v1, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mIndex:I

    aput p1, v0, v1

    .line 1202
    iget v0, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mIndex:I

    .line 1203
    return-void

    .line 1199
    :cond_1f
    iget v0, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mSum:F

    iget-object v1, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mQueue:[F

    iget v2, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mIndex:I

    aget v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mSum:F

    goto :goto_10
.end method

.method private clear()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1186
    iput v1, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mSize:I

    .line 1187
    iput v2, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mSum:F

    .line 1188
    iput v1, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mIndex:I

    .line 1189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    const/4 v1, 0x5

    if-ge v0, v1, :cond_13

    .line 1190
    iget-object v1, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mQueue:[F

    aput v2, v1, v0

    .line 1189
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1192
    :cond_13
    return-void
.end method

.method private getSum()F
    .registers 2

    .prologue
    .line 1206
    iget v0, p0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;->mSum:F

    return v0
.end method
