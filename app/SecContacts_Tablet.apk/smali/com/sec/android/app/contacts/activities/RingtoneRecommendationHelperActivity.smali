.class public Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity;
.super Landroid/app/Activity;
.source "RingtoneRecommendationHelperActivity.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.sec.android.contacts.action.ringtonerecommendation"

.field public static final KEY_PICKEUP_URI:Ljava/lang/String; = "KEY_PICKEDUP_URI"


# instance fields
.field private mPickedUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity;->mPickedUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 44
    const v3, 0x7f040210

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 48
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 49
    const-string v3, "KEY_PICKEDUP_URI"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "pickedUriString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity;->mPickedUri:Landroid/net/Uri;

    .line 54
    .end local v2    # "pickedUriString":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity;->mPickedUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 55
    new-instance v0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity;->mPickedUri:Landroid/net/Uri;

    new-instance v4, Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity;)V

    invoke-direct {v0, p0, v3, v4}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;-><init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;)V

    .line 69
    .local v0, "helper":Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->doExtract()V

    .line 73
    .end local v0    # "helper":Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
