.class Lcom/android/contacts/list/ContactEntryListFragment$8;
.super Ljava/lang/Object;
.source "ContactEntryListFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactEntryListFragment;->addTwIndexScroll(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactEntryListFragment;)V
    .locals 0

    .prologue
    .line 2147
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment$8;, "Lcom/android/contacts/list/ContactEntryListFragment.8;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment$8;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexSelected(I)V
    .locals 2
    .param p1, "sectionIndex"    # I

    .prologue
    .line 2149
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment$8;, "Lcom/android/contacts/list/ContactEntryListFragment.8;"
    if-gez p1, :cond_0

    .line 2150
    const/4 p1, 0x0

    .line 2152
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment$8;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    # getter for: Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactEntryListFragment;->access$500(Lcom/android/contacts/list/ContactEntryListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2153
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment$8;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    # getter for: Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactEntryListFragment;->access$500(Lcom/android/contacts/list/ContactEntryListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment$8;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    # getter for: Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->access$500(Lcom/android/contacts/list/ContactEntryListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSelection(I)V

    .line 2155
    :cond_1
    return-void
.end method
