.class Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$4;
.super Ljava/lang/Object;
.source "DormantModeQuickSettingButton.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->onDisplayDormantModeAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

.field final synthetic val$mDormantModeCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$4;->val$mDormantModeCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 266
    if-eqz p2, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_dormantmode_checked"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$4;->val$mDormantModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/view/View;->playSoundEffect(I)V

    .line 274
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_dormantmode_checked"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method
