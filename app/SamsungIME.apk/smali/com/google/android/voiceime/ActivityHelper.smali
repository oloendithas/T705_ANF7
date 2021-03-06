.class public Lcom/google/android/voiceime/ActivityHelper;
.super Landroid/app/Activity;
.source "ActivityHelper.java"


# static fields
.field private static final RECOGNITION_REQUEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityHelper"


# instance fields
.field private mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voiceime/ActivityHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/voiceime/ActivityHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/voiceime/ActivityHelper;->notifyResult(Ljava/lang/String;)V

    return-void
.end method

.method private createResultDialog([Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p1, "recognitionResults"    # [Ljava/lang/String;

    .prologue
    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    new-instance v1, Lcom/google/android/voiceime/ActivityHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/voiceime/ActivityHelper$1;-><init>(Lcom/google/android/voiceime/ActivityHelper;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 94
    new-instance v1, Lcom/google/android/voiceime/ActivityHelper$2;

    invoke-direct {v1, p0}, Lcom/google/android/voiceime/ActivityHelper$2;-><init>(Lcom/google/android/voiceime/ActivityHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/google/android/voiceime/ActivityHelper$3;

    invoke-direct {v2, p0}, Lcom/google/android/voiceime/ActivityHelper$3;-><init>(Lcom/google/android/voiceime/ActivityHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 81
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x1030071

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_0
.end method

.method private notifyResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/voiceime/ActivityHelper;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/voiceime/ServiceBridge;->notifyResult(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 116
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 66
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-eqz p3, :cond_0

    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/voiceime/ActivityHelper;->createResultDialog([Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 74
    .end local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/voiceime/ActivityHelper;->notifyResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v2, Lcom/google/android/voiceime/ServiceBridge;

    invoke-direct {v2}, Lcom/google/android/voiceime/ServiceBridge;-><init>()V

    iput-object v2, p0, Lcom/google/android/voiceime/ActivityHelper;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "calling_package"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v2, "android.speech.extra.MAX_RESULTS"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    if-eqz p1, :cond_0

    .line 56
    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "languageLocale":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 58
    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .end local v1    # "languageLocale":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 62
    return-void
.end method
