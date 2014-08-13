.class Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$3;
.super Ljava/lang/Object;
.source "QuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->showTalkBackDisablePopup(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->doNext()V

    .line 648
    return-void
.end method
