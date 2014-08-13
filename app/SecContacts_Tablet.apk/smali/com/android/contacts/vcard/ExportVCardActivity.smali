.class public Lcom/android/contacts/vcard/ExportVCardActivity;
.super Landroid/app/Activity;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/ExportVCardActivity$1;,
        Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;,
        Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "VCardExport"

.field private static mSelectedContactHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final PATH:Ljava/lang/String;

.field private final SELECTED_CONTACTS_MAP:Ljava/lang/String;

.field private final TARGET_FILE_NAME:Ljava/lang/String;

.field private export_file_name:Ljava/lang/String;

.field private mConnected:Z

.field private mErrorReason:Ljava/lang/String;

.field private mExportPath:Ljava/lang/String;

.field private final mIncomingMessenger:Landroid/os/Messenger;

.field private volatile mProcessOngoing:Z

.field private mService:Lcom/android/contacts/vcard/VCardService;

.field private mTargetFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const-string v0, "target_file_name"

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->TARGET_FILE_NAME:Ljava/lang/String;

    .line 66
    const-string v0, "path"

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->PATH:Ljava/lang/String;

    .line 67
    const-string v0, "selected_contacts"

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->SELECTED_CONTACTS_MAP:Ljava/lang/String;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 133
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;-><init>(Lcom/android/contacts/vcard/ExportVCardActivity;Lcom/android/contacts/vcard/ExportVCardActivity$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    .line 141
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ExportVCardActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/vcard/ExportVCardActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ExportVCardActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ExportVCardActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/vcard/ExportVCardActivity;)Lcom/android/contacts/vcard/VCardService;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ExportVCardActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/vcard/ExportVCardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ExportVCardActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindAndFinish()V

    return-void
.end method

.method public static getEntryForExportVcard()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "array":[Ljava/lang/String;
    sget-object v7, Lcom/android/contacts/vcard/ExportVCardActivity;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 398
    :cond_0
    return-object v0

    .line 384
    :cond_1
    sget-object v7, Lcom/android/contacts/vcard/ExportVCardActivity;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v6

    .line 385
    .local v6, "size":I
    new-array v0, v6, [Ljava/lang/String;

    .line 387
    sget-object v7, Lcom/android/contacts/vcard/ExportVCardActivity;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 388
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 389
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 390
    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 391
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 393
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "loopupKeyList":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v4, v7

    aput-object v7, v0, v2

    .line 396
    add-int/lit8 v2, v2, 0x1

    .line 397
    goto :goto_0
.end method

.method private declared-synchronized unbindAndFinish()V
    .locals 1

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0, p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    .line 375
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 361
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindAndFinish()V

    .line 362
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindAndFinish()V

    .line 355
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0e00e0

    const v4, 0x7f090015

    const/16 v3, 0x400

    .line 172
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 178
    if-eqz p1, :cond_0

    .line 179
    const-string v2, "path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    .line 180
    const-string v2, "target_file_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    .line 181
    const-string v2, "selected_contacts"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    sput-object v2, Lcom/android/contacts/vcard/ExportVCardActivity;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 183
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "file_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->export_file_name:Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    check-cast v2, Ljava/util/HashMap;

    sput-object v2, Lcom/android/contacts/vcard/ExportVCardActivity;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 193
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "targetDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_4

    .line 198
    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 218
    :cond_3
    :goto_0
    return-void

    .line 202
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_5

    .line 205
    const-string v2, "VCardExport"

    const-string v3, "Failed to start vCard service"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 207
    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 211
    :cond_5
    const/4 v2, 0x1

    invoke-virtual {p0, v0, p0, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 212
    const-string v2, "VCardExport"

    const-string v3, "Failed to connect to vCard service."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 214
    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0e00f3

    const v1, 0x7f0e00f2

    const/4 v2, 0x1

    const v5, 0x104000a

    const/4 v4, 0x0

    .line 281
    sparse-switch p1, :sswitch_data_0

    .line 326
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 283
    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e00f0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e00f1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;

    invoke-direct {v1, p0}, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;-><init>(Lcom/android/contacts/vcard/ExportVCardActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 293
    :sswitch_1
    iput-boolean v4, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 294
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    sget-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e02c5

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0e00f5

    goto :goto_1

    .line 304
    :sswitch_2
    iput-boolean v4, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 305
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    :goto_2
    aput-object v0, v2, v4

    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f0e00e0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 315
    :sswitch_3
    iput-boolean v4, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 316
    iput-boolean v4, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    .line 317
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    sget-object v2, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0e02bf

    :goto_3
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e00cf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f0e00ce

    goto :goto_3

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090006 -> :sswitch_3
        0x7f090013 -> :sswitch_0
        0x7f090015 -> :sswitch_2
        0x7f0e00f5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 331
    const v0, 0x7f090015

    if-ne p1, v0, :cond_0

    .line 332
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 339
    :goto_0
    return-void

    .line 333
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :cond_0
    const v0, 0x7f090013

    if-ne p1, v0, :cond_1

    .line 334
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    const v0, 0x7f0e00f1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 337
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 6

    .prologue
    const v5, 0x7f0e00e0

    const v4, 0x7f090015

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    .line 228
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, "targetDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    .line 233
    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_3

    .line 240
    const-string v2, "VCardExport"

    const-string v3, "Failed to start vCard service"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 242
    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 246
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v0, p0, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    const-string v2, "VCardExport"

    const-string v3, "Failed to connect to vCard service."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 249
    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    const-string v0, "target_file_name"

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "path"

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "selected_contacts"

    sget-object v1, Lcom/android/contacts/vcard/ExportVCardActivity;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 168
    return-void
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 258
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    .line 259
    check-cast p2, Lcom/android/contacts/vcard/VCardService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/vcard/VCardService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 260
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mExportPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/VCardService;->setTargetDirectory(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->export_file_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleRequestAvailableExportDestination(Landroid/os/Messenger;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 269
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    .line 271
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "VCardExport"

    const-string v1, "Disconnected from service during the process ongoing."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const v0, 0x7f0e00e0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 275
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_0
    monitor-exit p0

    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 345
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p0, p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 349
    :cond_0
    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 367
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 368
    return-void
.end method
