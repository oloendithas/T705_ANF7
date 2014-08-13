.class Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTabListener"
.end annotation


# instance fields
.field public mIgnoreTabSelected:Z

.field final synthetic this$0:Lcom/android/contacts/activities/ActionBarAdapter;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;
    .param p2, "x1"    # Lcom/android/contacts/activities/ActionBarAdapter$1;

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 646
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 5
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    const/4 v4, 0x0

    .line 656
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mIsTutorialMode:Z
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$300(Lcom/android/contacts/activities/ActionBarAdapter;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    if-nez v2, :cond_0

    .line 660
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->isUpdateTabPosition:Z
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$400(Lcom/android/contacts/activities/ActionBarAdapter;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 661
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I
    invoke-static {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->access$500(Lcom/android/contacts/activities/ActionBarAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    .line 662
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # setter for: Lcom/android/contacts/activities/ActionBarAdapter;->isUpdateTabPosition:Z
    invoke-static {v2, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->access$402(Lcom/android/contacts/activities/ActionBarAdapter;Z)Z

    goto :goto_0

    .line 666
    :cond_2
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I
    invoke-static {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->access$600(Lcom/android/contacts/activities/ActionBarAdapter;)I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$700(Lcom/android/contacts/activities/ActionBarAdapter;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mIsKNOXMode:Z
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$800(Lcom/android/contacts/activities/ActionBarAdapter;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 667
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$900(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "0008"

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 668
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 669
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I
    invoke-static {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1000(Lcom/android/contacts/activities/ActionBarAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(I)V

    .line 670
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$000(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 671
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$000(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onDialerTabSelected()V

    .line 675
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 676
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.contacts"

    const-string v3, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 697
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$900(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 702
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    .line 703
    .local v1, "pos":I
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # invokes: Lcom/android/contacts/activities/ActionBarAdapter;->getTabPositionFromNavigationItemPosition(I)I
    invoke-static {v2, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1100(Lcom/android/contacts/activities/ActionBarAdapter;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v4, 0x2

    # invokes: Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I
    invoke-static {v3, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1200(Lcom/android/contacts/activities/ActionBarAdapter;I)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 704
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$900(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "0017"

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 710
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    goto/16 :goto_0

    .line 705
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # invokes: Lcom/android/contacts/activities/ActionBarAdapter;->getTabPositionFromNavigationItemPosition(I)I
    invoke-static {v2, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1100(Lcom/android/contacts/activities/ActionBarAdapter;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v4, 0x1

    # invokes: Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I
    invoke-static {v3, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1200(Lcom/android/contacts/activities/ActionBarAdapter;I)I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 706
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$900(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "0021"

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 707
    :cond_7
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # invokes: Lcom/android/contacts/activities/ActionBarAdapter;->getTabPositionFromNavigationItemPosition(I)I
    invoke-static {v2, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1100(Lcom/android/contacts/activities/ActionBarAdapter;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v4, 0x3

    # invokes: Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I
    invoke-static {v3, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1200(Lcom/android/contacts/activities/ActionBarAdapter;I)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 708
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$900(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "0016"

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 650
    return-void
.end method
