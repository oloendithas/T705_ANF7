.class Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$2;
.super Ljava/lang/Object;
.source "SmartNetworkQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->onSmartNetworkPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 154
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;

    const/4 v1, 0x1

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->setMode(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;I)V

    .line 156
    return-void
.end method
