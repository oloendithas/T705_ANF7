.class public Lcom/android/contacts/activities/NamecardViewer;
.super Lcom/android/contacts/ContactsActivity;
.source "NamecardViewer.java"


# static fields
.field public static final KEY_EXTRA_CURR_POS:Ljava/lang/String; = "curr_position"

.field public static final KEY_EXTRA_QUERY_STRING:Ljava/lang/String; = "query_string"

.field public static final KEY_EXTRA_SORT_ORDER:Ljava/lang/String; = "sort_order"

.field private static final TAG:Ljava/lang/String; = "NamecardViewer"


# instance fields
.field private mListFragment:Lcom/android/contacts/list/NamecardViewerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 43
    instance-of v0, p1, Lcom/android/contacts/list/NamecardViewerFragment;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, Lcom/android/contacts/list/NamecardViewerFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/NamecardViewer;->mListFragment:Lcom/android/contacts/list/NamecardViewerFragment;

    .line 46
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 50
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 57
    const v0, 0x7f04019f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 63
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardViewer;->mListFragment:Lcom/android/contacts/list/NamecardViewerFragment;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/contacts/list/NamecardViewerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/NamecardViewerFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/NamecardViewer;->mListFragment:Lcom/android/contacts/list/NamecardViewerFragment;

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0903a5

    iget-object v2, p0, Lcom/android/contacts/activities/NamecardViewer;->mListFragment:Lcom/android/contacts/list/NamecardViewerFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 70
    :cond_0
    return-void
.end method
