.class Lcom/android/internal/os/storage/ExternalStorageFormatter$2;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

.field final synthetic val$extStoragePath:Ljava/lang/String;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$extStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 259
    const/4 v5, 0x0

    .line 261
    .local v5, "success":Z
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    .line 262
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const/4 v7, 0x1

    # setter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIsFormatSuccess:Z
    invoke-static {v6, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$102(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_c0

    .line 263
    const/4 v5, 0x1

    .line 275
    :goto_f
    if-eqz v5, :cond_52

    .line 276
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z
    invoke-static {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 277
    const-string v6, "ATT"

    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 278
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    const-string v6, "ExternalStorageFormatter"

    const-string v7, "Send android.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI INTENT!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_38
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v6}, Landroid/app/Service;->stopSelf()V

    .line 311
    :goto_3d
    return-void

    .line 281
    :cond_3e
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    const-string v6, "ExternalStorageFormatter"

    const-string v7, "Send android.intent.action.MASTER_CLEAR INTENT!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 291
    :cond_52
    if-nez v5, :cond_6e

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z
    invoke-static {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 292
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 310
    :cond_68
    :goto_68
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v6}, Landroid/app/Service;->stopSelf()V

    goto :goto_3d

    .line 295
    :cond_6e
    :try_start_6e
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "primary":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 297
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$extStoragePath:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 298
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "paths":[Ljava/lang/String;
    array-length v6, v3

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_92
    if-ltz v1, :cond_68

    .line 300
    aget-object v2, v3, v1

    .line 301
    .local v2, "path":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 302
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    invoke-interface {v6, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_b4} :catch_b7

    .line 299
    :cond_b4
    add-int/lit8 v1, v1, -0x1

    goto :goto_92

    .line 306
    .end local v1    # "i":I
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "paths":[Ljava/lang/String;
    .end local v4    # "primary":Ljava/lang/String;
    :catch_b7
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "ExternalStorageFormatter"

    const-string v7, "Failed talking with mount service"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_68

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_c0
    move-exception v6

    goto/16 :goto_f
.end method
