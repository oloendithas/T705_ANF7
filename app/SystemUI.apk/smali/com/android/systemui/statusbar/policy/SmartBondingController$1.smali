.class Lcom/android/systemui/statusbar/policy/SmartBondingController$1;
.super Ljava/lang/Object;
.source "SmartBondingController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/SmartBondingController;->createSmartBondingUsageAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 139
    const-string v0, "StatusBar.SmartBondingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check changed notification : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # getter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$000(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding_notification"

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # getter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDisableAlertCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$100(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 142
    return-void

    :cond_0
    move v0, v1

    .line 140
    goto :goto_0
.end method
