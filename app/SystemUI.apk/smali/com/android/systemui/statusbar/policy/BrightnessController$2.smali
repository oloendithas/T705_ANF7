.class Lcom/android/systemui/statusbar/policy/BrightnessController$2;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$2;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$2;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    # getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mAllowSettingsChanges:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$100(Lcom/android/systemui/statusbar/policy/BrightnessController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
