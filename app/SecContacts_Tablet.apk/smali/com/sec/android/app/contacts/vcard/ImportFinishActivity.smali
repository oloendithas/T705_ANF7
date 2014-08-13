.class public Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;
.super Landroid/app/Activity;
.source "ImportFinishActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$1;,
        Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;,
        Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$PositiveButtonListener;
    }
.end annotation


# static fields
.field public static final ENTRY_COUNT:Ljava/lang/String; = "entryCount"

.field public static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIntent:Landroid/content/Intent;

.field private final mNegativeButtonListener:Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;

.field private final mPositiveButtonListener:Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$PositiveButtonListener;

.field private mShowDetail:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const-string v0, "VCardImportFinish"

    iput-object v0, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->LOG_TAG:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$PositiveButtonListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$PositiveButtonListener;-><init>(Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mPositiveButtonListener:Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$PositiveButtonListener;

    .line 71
    new-instance v0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;-><init>(Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mNegativeButtonListener:Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "entryCount"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mShowDetail:Z

    .line 80
    return-void

    :cond_0
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 98
    packed-switch p1, :pswitch_data_0

    .line 123
    const-string v4, "VCardImportFinish"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown dialog id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v4

    :goto_0
    return-object v4

    .line 102
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "title":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mShowDetail:Z

    if-eqz v4, :cond_0

    .line 105
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mIntent:Landroid/content/Intent;

    .line 106
    const v4, 0x7f0e02c6

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "message":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    iget-object v6, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mPositiveButtonListener:Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$PositiveButtonListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    iget-object v6, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mNegativeButtonListener:Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mNegativeButtonListener:Lcom/sec/android/app/contacts/vcard/ImportFinishActivity$NegativeButtonListener;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 119
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mDialog:Landroid/app/AlertDialog;

    .line 120
    iget-object v4, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 108
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mIntent:Landroid/content/Intent;

    .line 109
    iget-object v4, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mIntent:Landroid/content/Intent;

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "entryCount"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 111
    .local v1, "count":I
    const v4, 0x7f0e02c7

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_1

    .line 98
    :pswitch_data_0
    .packed-switch 0x7f09000e
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 86
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 93
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 94
    return-void
.end method
