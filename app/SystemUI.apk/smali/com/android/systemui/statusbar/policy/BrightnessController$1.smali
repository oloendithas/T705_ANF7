.class Lcom/android/systemui/statusbar/policy/BrightnessController$1;
.super Lcom/android/systemui/statusbar/policy/CurrentUserTracker;
.source "BrightnessController.java"


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
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessController;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$1;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$1;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    # invokes: Lcom/android/systemui/statusbar/policy/BrightnessController;->resetObservers()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$000(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    .line 136
    return-void
.end method
