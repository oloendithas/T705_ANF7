.class Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity$1;
.super Ljava/lang/Object;
.source "RingtoneRecommendationHelperActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 67
    return-void
.end method

.method public onRingtoneRecommend(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/RingtoneRecommendationHelperActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 61
    return-void
.end method
