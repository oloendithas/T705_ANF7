.class public Lcom/android/systemui/usb/UsbStorageActivity;
.super Landroid/app/Activity;
.source "UsbStorageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DLG_CONFIRM_KILL_STORAGE_USERS:I = 0x1

.field private static final DLG_ERROR_SHARING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UsbStorageActivity"

.field static final localLOGV:Z = true


# instance fields
.field private mAsyncStorageHandler:Landroid/os/Handler;

.field private mBanner:Landroid/widget/TextView;

.field private mDestroyed:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/TextView;

.field private mMountButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUIHandler:Landroid/os/Handler;

.field private mUnmountButton:Landroid/widget/Button;

.field private mUsbStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 87
    new-instance v0, Lcom/android/systemui/usb/UsbStorageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/UsbStorageActivity$1;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    new-instance v0, Lcom/android/systemui/usb/UsbStorageActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/UsbStorageActivity$2;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/UsbStorageActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->handleUsbStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/UsbStorageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->switchDisplay(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/UsbStorageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->switchDisplayAsync(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/usb/UsbStorageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->switchUsbMassStorage(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/usb/UsbStorageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/usb/UsbStorageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->checkStorageUsersAsync()V

    return-void
.end method

.method private checkStorageUsers()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/usb/UsbStorageActivity$9;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method

.method private checkStorageUsersAsync()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 305
    .local v3, "ims":Landroid/os/storage/IMountService;
    if-nez v3, :cond_0

    .line 307
    invoke-direct {p0, v8}, Lcom/android/systemui/usb/UsbStorageActivity;->scheduleShowDialog(I)V

    .line 309
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "extStoragePath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 312
    .local v5, "showDialog":Z
    :try_start_0
    invoke-interface {v3, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v6

    .line 313
    .local v6, "stUsers":[I
    if-eqz v6, :cond_2

    array-length v7, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v7, :cond_2

    .line 314
    const/4 v5, 0x1

    .line 327
    .end local v6    # "stUsers":[I
    :cond_1
    :goto_0
    if-eqz v5, :cond_3

    .line 329
    invoke-direct {p0, v9}, Lcom/android/systemui/usb/UsbStorageActivity;->scheduleShowDialog(I)V

    .line 334
    :goto_1
    return-void

    .line 317
    .restart local v6    # "stUsers":[I
    :cond_2
    :try_start_1
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 318
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v4

    .line 319
    .local v4, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-lez v7, :cond_1

    .line 320
    const/4 v5, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v4    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "stUsers":[I
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v8}, Lcom/android/systemui/usb/UsbStorageActivity;->scheduleShowDialog(I)V

    goto :goto_0

    .line 331
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v7, "UsbStorageActivity"

    const-string v8, "onClick !!! (Enabling UMS)"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-direct {p0, v9}, Lcom/android/systemui/usb/UsbStorageActivity;->switchUsbMassStorage(Z)V

    goto :goto_1
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 223
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 224
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 225
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 227
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleUsbStateChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 216
    .local v0, "connected":Z
    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 220
    :cond_0
    return-void
.end method

.method private scheduleShowDialog(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 256
    const-string v0, "UsbStorageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialogInner :: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity$6;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method private switchDisplay(Z)V
    .locals 2
    .param p1, "usbStorageInUse"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity$3;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method private switchDisplayAsync(Z)V
    .locals 5
    .param p1, "usbStorageInUse"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 156
    const-string v0, "UsbStorageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchDisplayAsync :: usbStorageInUse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mIcon:Landroid/widget/ImageView;

    const v1, 0x10810c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mBanner:Landroid/widget/TextView;

    const v1, 0x104071d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMessage:Landroid/widget/TextView;

    const v1, 0x104071e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mIcon:Landroid/widget/ImageView;

    const v1, 0x10810c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mBanner:Landroid/widget/TextView;

    const v1, 0x1040713

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMessage:Landroid/widget/TextView;

    const v1, 0x1040714

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private switchUsbMassStorage(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/usb/UsbStorageActivity$7;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity$8;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 347
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 348
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 339
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->checkStorageUsers()V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 341
    const-string v0, "UsbStorageActivity"

    const-string v1, "onClick !!! (Disabling UMS)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/UsbStorageActivity;->switchUsbMassStorage(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    const-string v1, "UsbStorageActivity"

    const-string v2, "onCreate !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 110
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 111
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 112
    const-string v1, "UsbStorageActivity"

    const-string v2, "Failed to get StorageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SystemUI UsbStorageActivity"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "thr":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 123
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 127
    :cond_1
    const v1, 0x1090135

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 129
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mIcon:Landroid/widget/ImageView;

    .line 130
    const v1, 0x1020425

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mBanner:Landroid/widget/TextView;

    .line 131
    const v1, 0x102000b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMessage:Landroid/widget/TextView;

    .line 133
    const v1, 0x1020426

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    .line 134
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v1, 0x1020427

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    .line 136
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v1, 0x102000d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 138
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x1040725

    const/4 v0, 0x0

    .line 232
    packed-switch p1, :pswitch_data_0

    .line 252
    :goto_0
    return-object v0

    .line 234
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040722

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/usb/UsbStorageActivity$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/usb/UsbStorageActivity$5;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040723

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 245
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040724

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040717

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mDestroyed:Z

    .line 144
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 206
    const-string v0, "UsbStorageActivity"

    const-string v1, "onPause !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 212
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 176
    const-string v3, "UsbStorageActivity"

    const-string v4, "onResume !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    iget-object v3, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 180
    iget-object v3, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/usb/UsbStorageActivity$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/usb/UsbStorageActivity$4;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    const/4 v2, 0x0

    .line 193
    .local v2, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    const-string v3, "enterprise_policy"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 194
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 197
    :cond_0
    if-eqz v2, :cond_1

    .line 198
    iget-object v3, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/enterprise/RestrictionPolicy;->isUsbMassStorageEnabled(Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 201
    :cond_1
    return-void

    .line 188
    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v2    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :catch_0
    move-exception v1

    .line 189
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "UsbStorageActivity"

    const-string v4, "Failed to read UMS enable state"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
