.class Landroid/widget/DateTimeView$2;
.super Landroid/database/ContentObserver;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DateTimeView;


# direct methods
.method constructor <init>(Landroid/widget/DateTimeView;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 253
    iput-object p1, p0, Landroid/widget/DateTimeView$2;->this$0:Landroid/widget/DateTimeView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 256
    iget-object v0, p0, Landroid/widget/DateTimeView$2;->this$0:Landroid/widget/DateTimeView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 259
    :try_start_5
    iget-object v0, p0, Landroid/widget/DateTimeView$2;->this$0:Landroid/widget/DateTimeView;

    invoke-virtual {v0}, Landroid/widget/DateTimeView;->update()V
    :try_end_a
    .catch Landroid/view/ViewRootImpl$CalledFromWrongThreadException; {:try_start_5 .. :try_end_a} :catch_b

    .line 261
    :goto_a
    return-void

    .line 260
    :catch_b
    move-exception v0

    goto :goto_a
.end method
