.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 1189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1190
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 13
    .param p1, "selfChange"    # Z

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1193
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1196
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "emergency_mode"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_5

    move v2, v8

    .line 1198
    .local v2, "mEnabled":Z
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean v2, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    .line 1199
    const-string v7, "PhoneStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EmergencyModeObserver: onChange() mEnabled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelHeader:Landroid/view/View;

    const v11, 0x7f080079

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1203
    .local v1, "mDateTimeView":Landroid/view/View;
    if-eqz v2, :cond_6

    move v7, v9

    :goto_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1207
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v11, 0x7f080081

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1208
    .local v0, "buttonHolder":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1211
    .local v3, "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_7

    .line 1212
    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1218
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1220
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v11, 0x7f08007e

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v2, :cond_8

    move v7, v10

    :goto_3
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    .end local v3    # "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sFinderButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    .line 1227
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v11, 0x7f080077

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    move v11, v10

    :goto_4
    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1229
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v11, 0x7f080078

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v2, :cond_a

    move v7, v10

    :goto_5
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1235
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1239
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v7, :cond_4

    .line 1240
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v7, :cond_3

    .line 1241
    const/4 v6, 0x0

    .line 1242
    .local v6, "topMargin":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1244
    .local v4, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v2, :cond_2

    .line 1245
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v7, :cond_b

    .line 1246
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0d0096

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d007f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    add-int v6, v7, v11

    .line 1256
    :cond_2
    :goto_6
    invoke-virtual {v4, v9, v6, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1257
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1260
    .end local v4    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "topMargin":I
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    if-eqz v7, :cond_4

    .line 1261
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    if-eqz v2, :cond_c

    :goto_7
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1266
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v2, :cond_d

    :goto_8
    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyLongLifeMode:Z
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 1267
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1268
    return-void

    .end local v0    # "buttonHolder":Landroid/view/View;
    .end local v1    # "mDateTimeView":Landroid/view/View;
    .end local v2    # "mEnabled":Z
    :cond_5
    move v2, v9

    .line 1196
    goto/16 :goto_0

    .restart local v1    # "mDateTimeView":Landroid/view/View;
    .restart local v2    # "mEnabled":Z
    :cond_6
    move v7, v8

    .line 1203
    goto/16 :goto_1

    .line 1214
    .restart local v0    # "buttonHolder":Landroid/view/View;
    .restart local v3    # "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1215
    .local v5, "res":Landroid/content/res/Resources;
    const v7, 0x7f0d009a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_8
    move v7, v9

    .line 1220
    goto/16 :goto_3

    .end local v3    # "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    move v11, v9

    .line 1227
    goto/16 :goto_4

    :cond_a
    move v7, v9

    .line 1229
    goto/16 :goto_5

    .line 1250
    .restart local v4    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v6    # "topMargin":I
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0d0072

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d007e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    add-int v6, v7, v11

    goto :goto_6

    .end local v4    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "topMargin":I
    :cond_c
    move v10, v9

    .line 1261
    goto :goto_7

    :cond_d
    move v8, v9

    .line 1266
    goto :goto_8
.end method
