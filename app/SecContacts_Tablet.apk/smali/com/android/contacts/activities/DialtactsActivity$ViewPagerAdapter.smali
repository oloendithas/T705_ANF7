.class public Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;
.super Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

.field private mCallDetailFragment:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field private mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

.field private mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field private mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    .line 328
    invoke-direct {p0, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 329
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 393
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x3

    .line 396
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 334
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 336
    const/4 p1, 0x3

    .line 339
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 378
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No fragment at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-nez v0, :cond_1

    .line 342
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 375
    :goto_0
    return-object v0

    .line 346
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-nez v0, :cond_2

    .line 347
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .line 348
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    new-instance v1, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setLogsListActionListener(Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;)V

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    goto :goto_0

    .line 352
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->isFonblet:Z
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 353
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    if-nez v0, :cond_3

    .line 354
    new-instance v0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    goto :goto_0

    .line 359
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-nez v0, :cond_5

    .line 360
    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactTileListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    goto :goto_0

    .line 365
    :pswitch_3
    const-string v0, "feature_scroll_fragment"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 366
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v0, :cond_6

    .line 367
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 369
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    goto :goto_0

    .line 372
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    if-nez v0, :cond_8

    .line 373
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    .line 375
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
