.class Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNavigationListener"
.end annotation


# instance fields
.field public mIgnoreNavigationItemSelected:Z

.field final synthetic this$0:Lcom/android/contacts/activities/ActionBarAdapter;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;
    .param p2, "x1"    # Lcom/android/contacts/activities/ActionBarAdapter$1;

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 4
    .param p1, "itemPosition"    # I
    .param p2, "itemId"    # J

    .prologue
    .line 768
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->mIgnoreNavigationItemSelected:Z

    if-nez v1, :cond_1

    .line 769
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I
    invoke-static {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$600(Lcom/android/contacts/activities/ActionBarAdapter;)I

    move-result v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z
    invoke-static {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$700(Lcom/android/contacts/activities/ActionBarAdapter;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mIsKNOXMode:Z
    invoke-static {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$800(Lcom/android/contacts/activities/ActionBarAdapter;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 771
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 774
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1300(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I
    invoke-static {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->access$500(Lcom/android/contacts/activities/ActionBarAdapter;)I

    move-result v3

    # invokes: Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I
    invoke-static {v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1200(Lcom/android/contacts/activities/ActionBarAdapter;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 780
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    invoke-static {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$000(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    invoke-static {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$000(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onDialerTabSelected()V

    .line 786
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 787
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 799
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$900(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 812
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 778
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    goto :goto_0

    .line 803
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # invokes: Lcom/android/contacts/activities/ActionBarAdapter;->getTabPositionFromNavigationItemPosition(I)I
    invoke-static {v2, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1100(Lcom/android/contacts/activities/ActionBarAdapter;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    goto :goto_1
.end method
