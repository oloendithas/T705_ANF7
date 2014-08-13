.class Lcom/android/contacts/activities/DialtactsActivity$7;
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
    .line 926
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$7;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 931
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$7;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$2300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "swipe_to_call_message"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 932
    .local v0, "swipeToOnOff":Z
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$7;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$2300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "swipe_to_call_message"

    if-nez v0, :cond_4

    move v1, v2

    :goto_0
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 934
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$7;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    if-eqz v1, :cond_0

    .line 935
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$7;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v4, v1, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    if-nez v0, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollFragment(Z)V

    .line 939
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$7;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 940
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$7;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v1

    if-nez v0, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionEnabled(Z)V

    .line 941
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$7;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->invalidateCache()V

    .line 944
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$7;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$2500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactTileListFragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 945
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$7;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$2500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactTileListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileListFragment;->initStreListView()V

    .line 947
    :cond_3
    return v2

    :cond_4
    move v1, v3

    .line 932
    goto :goto_0

    :cond_5
    move v1, v3

    .line 935
    goto :goto_1
.end method
