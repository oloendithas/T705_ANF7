.class Lcom/android/contacts/activities/DialtactsActivity$8;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$8;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 957
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$8;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$2600(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "0007"

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 959
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 960
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 964
    const-string v1, "feature_chn_duos_gsm_gsm"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_common_dsds_support "

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 966
    :cond_0
    const-string v1, "fromDialer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 968
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$8;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 969
    return v3
.end method
