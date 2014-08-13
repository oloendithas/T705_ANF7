.class public Lcom/android/systemui/usb/ExternalStorageActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ExternalStorageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalStorageActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStoragePath:Ljava/lang/String;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private mSubSystem:Ljava/lang/String;

.field private final myFilesName:[Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 46
    iput-object v5, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mMountService:Landroid/os/storage/IMountService;

    .line 47
    iput-object v5, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.myfiles"

    const-string v4, "com.sec.android.app.myfiles.Myfiles"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.myfiles"

    const-string v4, "com.sec.android.app.myfiles.MainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->myFilesName:[Landroid/content/ComponentName;

    .line 55
    iput-object v5, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStoragePath:Ljava/lang/String;

    .line 56
    iput-object v5, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mSubSystem:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/android/systemui/usb/ExternalStorageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/ExternalStorageActivity$1;-><init>(Lcom/android/systemui/usb/ExternalStorageActivity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private StartFileManagerActivity()V
    .locals 4

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->buildMyFilesIntent()Landroid/content/Intent;

    move-result-object v1

    .line 188
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "usb"

    iget-object v3, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mSubSystem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    const-string v2, "com.sec.android.app.myfiles.SD_CARD_INSERTED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    :cond_0
    :try_start_0
    const-string v2, "ExternalStorageActivity"

    const-string v3, "StartFileManagerActivity!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ExternalStorageActivity"

    const-string v3, "unable to start StartFileManagerActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/ExternalStorageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/ExternalStorageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/ExternalStorageActivity;->getSubSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/ExternalStorageActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/ExternalStorageActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mSubSystem:Ljava/lang/String;

    return-object v0
.end method

.method private buildMyFilesIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->getMyfiles()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 184
    return-object v0
.end method

.method private getMyfiles()Landroid/content/ComponentName;
    .locals 8

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->myFilesName:[Landroid/content/ComponentName;

    .local v1, "arr$":[Landroid/content/ComponentName;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 168
    .local v2, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 169
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 178
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "cn":Landroid/content/ComponentName;
    :goto_1
    return-object v2

    .line 172
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "cn":Landroid/content/ComponentName;
    :cond_0
    const-string v6, "ExternalStorageActivity"

    const-string v7, "Myfiles component chosen"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v3

    .line 174
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 178
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getSubSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->getVolume(Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 203
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v1

    .line 207
    .end local v0    # "volume":Landroid/os/storage/StorageVolume;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSDCard(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 211
    iget-object v4, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v4, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v3

    .line 212
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 213
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v2

    .line 214
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 215
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    const/4 v3, 0x1

    goto :goto_0

    .line 214
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 152
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const/4 v0, 0x1

    .line 155
    .local v0, "allow":Z
    :goto_0
    if-nez v0, :cond_1

    .line 163
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 164
    return-void

    .line 152
    .end local v0    # "allow":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    .restart local v0    # "allow":Z
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->StartFileManagerActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ExternalStorageActivity"

    const-string v3, "Unable to launch Activity !!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x104073e

    .line 82
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 85
    .local v2, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 87
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 88
    :cond_0
    if-eqz v1, :cond_1

    const-string v4, "storage_volume"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStoragePath:Ljava/lang/String;

    .line 90
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v4, :cond_2

    .line 91
    const-string v4, "storage"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 92
    iget-object v4, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 93
    iget-object v4, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 97
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const v4, 0x7f0b0221

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 98
    const v4, 0x7f0b0222

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 99
    const v4, 0x7f0b0224

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 100
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 101
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 104
    iget-object v4, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStoragePath:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v4, :cond_3

    .line 105
    iget-object v4, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolume(Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 106
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v3, :cond_3

    .line 107
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mSubSystem:Ljava/lang/String;

    .line 111
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_3
    const-string v4, "usb"

    iget-object v5, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mSubSystem:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 112
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 113
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 116
    :cond_4
    const-string v4, "ExternalStorageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate !!! from path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStoragePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subsystem = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mSubSystem:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 119
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 147
    const-string v0, "ExternalStorageActivity"

    const-string v1, "onPause !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 140
    const-string v0, "ExternalStorageActivity"

    const-string v1, "onResume !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method
