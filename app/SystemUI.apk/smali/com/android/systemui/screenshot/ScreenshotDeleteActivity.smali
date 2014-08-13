.class public Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;
.super Landroid/app/Activity;
.source "ScreenshotDeleteActivity.java"


# static fields
.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x315

.field private static final TAG:Ljava/lang/String; = "ScreenshotDeleteActivity"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDeleteFile:Ljava/io/File;

.field private mImageFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 68
    const v4, 0x7f040014

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "FilePath"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    .line 73
    const-string v4, "ScreenshotDeleteActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mDeleteFile:Ljava/io/File;

    .line 76
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mDeleteFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b01ae

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 79
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 80
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const/16 v4, 0x315

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 142
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 86
    .local v2, "r":Landroid/content/res/Resources;
    const v3, 0x1030346

    .line 87
    .local v3, "theme":I
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v4, :cond_1

    .line 88
    const v3, 0x1030347

    .line 90
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x1040671

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b004b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;-><init>(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 136
    const-string v4, "android.intent.action.DELETE"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    .line 137
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 139
    :cond_2
    const-string v4, "ScreenshotDeleteActivity"

    const-string v5, "Fail : Invaild intent action"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onPause(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 155
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 147
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "screenshot"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 151
    return-void

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method
