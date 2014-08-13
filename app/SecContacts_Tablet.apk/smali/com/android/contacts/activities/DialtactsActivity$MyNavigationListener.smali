.class Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNavigationListener"
.end annotation


# instance fields
.field public mIgnoreNavigationItemSelected:Z

.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 1879
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/DialtactsActivity$1;

    .prologue
    .line 1879
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 6
    .param p1, "itemPosition"    # I
    .param p2, "itemId"    # J

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1883
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNavigationItemSelected, itemPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$3300(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1200(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1886
    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->access$1300()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 1887
    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->access$1300()I

    move-result p1

    .line 1888
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1890
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v2, 0x0

    # setter for: Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z
    invoke-static {v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$3302(Lcom/android/contacts/activities/DialtactsActivity;Z)Z

    .line 1892
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1200(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1893
    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 1896
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1897
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from_phone_app"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1898
    const-string v1, "selected_tab_pos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1899
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1915
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1956
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_0
    return v4

    .line 1919
    :cond_4
    if-ne p1, v5, :cond_5

    .line 1920
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1921
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1923
    const-string v1, "from_phone_app"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1926
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1933
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1937
    if-eq p1, v5, :cond_6

    .line 1938
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # setter for: Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I
    invoke-static {v1, p1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1702(Lcom/android/contacts/activities/DialtactsActivity;I)I

    .line 1948
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1200(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1949
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1950
    # setter for: Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I
    invoke-static {p1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1302(I)I

    .line 1953
    :cond_7
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1200(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1954
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->checkCallLogFavoriteList()V
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)V

    goto :goto_0
.end method
