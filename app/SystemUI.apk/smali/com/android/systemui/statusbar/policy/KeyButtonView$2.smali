.class Lcom/android/systemui/statusbar/policy/KeyButtonView$2;
.super Ljava/lang/Object;
.source "KeyButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJZ)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    goto :goto_0
.end method
