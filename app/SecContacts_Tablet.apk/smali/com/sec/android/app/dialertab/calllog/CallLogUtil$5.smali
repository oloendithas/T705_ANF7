.class final Lcom/sec/android/app/dialertab/calllog/CallLogUtil$5;
.super Ljava/lang/Object;
.source "CallLogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->openBlockNumberSettingDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 888
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0e03af

    const v5, 0x7f0e0347

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 890
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    const-string v1, "separate_call_reject"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 894
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$5;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 895
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 896
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 898
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_3

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_3

    .line 900
    const v1, 0x7f0e03ae

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 908
    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 911
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    .line 912
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 901
    :cond_3
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_4

    .line 903
    const v1, 0x7f0e03ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 904
    :cond_4
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_2

    .line 906
    const v1, 0x7f0e03ad

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 914
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_0

    .line 915
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$5;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 916
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 917
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 918
    const v1, 0x7f0e03ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 919
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 921
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    .line 922
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
