.class public Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;
.super Ljava/lang/Object;
.source "CallMessagePopup.java"


# static fields
.field public static final ACTION_CALL_MESSAGE:Ljava/lang/String; = "com.sec.android.app.dialertab.callmessage.CallMessageActivity"

.field private static final TAG:Ljava/lang/String; = "CallMessagePopup"

.field public static final VIDEO_CALL:I = 0x1

.field public static final VOICE_CALL:I

.field private static mHelpDialog:Landroid/app/AlertDialog;

.field private static mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getInstance()Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissHelpDialog()V
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mHelpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 141
    :cond_0
    return-void
.end method

.method private static isAvailableVoLTE(Landroid/content/Context;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v12, 0x1001

    const/16 v11, 0x1003

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 145
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 146
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_2

    move v1, v7

    .line 147
    .local v1, "isLTEConnected":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "voicecall_type"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    move v0, v7

    .line 150
    .local v0, "isActivateVoLTE":Z
    :goto_1
    sget-object v9, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v9}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v9

    if-eq v9, v12, :cond_0

    sget-object v9, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v9}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v9

    if-ne v9, v11, :cond_4

    :cond_0
    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0e047e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "noActive":Ljava/lang/String;
    sget-object v7, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v7

    if-ne v7, v11, :cond_1

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0e047f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    :cond_1
    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 157
    .local v5, "toast":Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 176
    .end local v2    # "noActive":Ljava/lang/String;
    .end local v5    # "toast":Landroid/widget/Toast;
    :goto_2
    return v8

    .end local v0    # "isActivateVoLTE":Z
    .end local v1    # "isLTEConnected":Z
    :cond_2
    move v1, v8

    .line 146
    goto :goto_0

    .restart local v1    # "isLTEConnected":Z
    :cond_3
    move v0, v8

    .line 147
    goto :goto_1

    .line 161
    .restart local v0    # "isActivateVoLTE":Z
    :cond_4
    new-instance v6, Lcom/android/contacts/VoLTEStateTracker;

    invoke-direct {v6}, Lcom/android/contacts/VoLTEStateTracker;-><init>()V

    .line 162
    .local v6, "volteStateTracker":Lcom/android/contacts/VoLTEStateTracker;
    invoke-virtual {v6, p0, v8}, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;Z)Z

    move-result v9

    if-nez v9, :cond_8

    .line 163
    const-string v3, ""

    .line 164
    .local v3, "noAvailable":Ljava/lang/String;
    sget-object v7, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v7

    if-ne v7, v12, :cond_6

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0e0476

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    :cond_5
    :goto_3
    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 172
    .restart local v5    # "toast":Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 166
    .end local v5    # "toast":Landroid/widget/Toast;
    :cond_6
    sget-object v7, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v7

    if-ne v7, v11, :cond_7

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0e0477

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 168
    :cond_7
    sget-object v7, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v7

    const/16 v9, 0x1002

    if-ne v7, v9, :cond_5

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0e0475

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .end local v3    # "noAvailable":Ljava/lang/String;
    :cond_8
    move v8, v7

    .line 176
    goto :goto_2
.end method

.method public static launch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "CallMessagePopup"

    const-string v1, "CallMessagePopup - launch"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v0, "CallMessagePopup"

    const-string v1, "CallMessage feature false"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public static launch(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "callType"    # I

    .prologue
    .line 66
    const-string v0, "CallMessagePopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallMessagePopup - launch / include callType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "CallMessagePopup"

    const-string v1, "CallMessage feature false"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public static showHelpDialog(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x1003

    .line 88
    new-instance v4, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;-><init>(Landroid/content/Context;)V

    .line 90
    .local v4, "pref":Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;
    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->isDoNotShowHelpMsg()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    sget-object v6, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mHelpDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 97
    :cond_2
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 98
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04016f

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "helpView":Landroid/view/View;
    sget-object v6, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 100
    const v6, 0x7f09035e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0e0488

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 102
    :cond_3
    const v6, 0x7f09035f

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 104
    .local v0, "checkLayout":Landroid/widget/LinearLayout;
    const v6, 0x7f090360

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 105
    .local v1, "checkbox":Landroid/widget/CheckBox;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 106
    new-instance v6, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup$1;

    invoke-direct {v6, v1}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup$1;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v5, 0x7f0e0467

    .line 115
    .local v5, "titleId":I
    sget-object v6, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 116
    const v5, 0x7f0e046e

    .line 119
    :cond_4
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e0347

    new-instance v8, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup$2;

    invoke-direct {v8, v1, v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup$2;-><init>(Landroid/widget/CheckBox;Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mHelpDialog:Landroid/app/AlertDialog;

    .line 132
    instance-of v6, p0, Lcom/android/contacts/activities/DialtactsActivity;

    if-nez v6, :cond_5

    instance-of v6, p0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v6, :cond_0

    .line 133
    :cond_5
    sget-object v6, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method
