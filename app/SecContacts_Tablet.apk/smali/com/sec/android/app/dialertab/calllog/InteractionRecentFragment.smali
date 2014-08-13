.class public Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;
.super Landroid/app/ListFragment;
.source "InteractionRecentFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;,
        Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$ItemView;
    }
.end annotation


# static fields
.field private static final KEY_SEARCH_FOCUS_STATE:Ljava/lang/String; = "searchFocusState"

.field private static final QUERY_MAX_LEN:I = 0x64

.field private static final SELECTED_ITEM_POSITION:Ljava/lang/String; = "selectedItemPosition"

.field private static final SELECTED_ITEM_POSITION_Y:Ljava/lang/String; = "selectedItemPositionY"

.field private static final TAG:Ljava/lang/String; = "InteractionRecentFragment"

.field private static final WHICH_OP_ALL_DELTE:I = 0x1

.field private static final WHICH_OP_MULTI_DELETE:I = 0x2

.field private static bDBChanged:Z

.field private static mBundle:Landroid/os/Bundle;

.field public static mItemPosition:I

.field public static mItemPositionY:I

.field private static mRequest:I


# instance fields
.field ITEM_ARRAY:Ljava/lang/String;

.field ITEM_COUNT:Ljava/lang/String;

.field ITEM_CURRENT_COUNT:Ljava/lang/String;

.field ITEM_MAX_COUNT:Ljava/lang/String;

.field ITEM_POPUP:Ljava/lang/String;

.field ITEM_REQUEST:Ljava/lang/String;

.field ITEM_SEND_MSG:Ljava/lang/String;

.field public SELECT_MAX_COUNT:I

.field VIEW_BY:Ljava/lang/String;

.field private alertDialog:Landroid/app/AlertDialog;

.field private checkedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

.field private empty_layout:Landroid/widget/LinearLayout;

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field mCallHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentCount:I

.field private mCursor:Landroid/database/Cursor;

.field private mEasyMode:Z

.field private mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field private mEmailCursor:Landroid/database/Cursor;

.field private mFocusState:Z

.field private mFromEmail:Z

.field private mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mHeaderSelectAll:Landroid/view/View;

.field private mIntent:Landroid/content/Intent;

.field private mIsSelectionMode:Z

.field private mIsSendingMSG:Z

.field private mItemCursor:Landroid/database/Cursor;

.field private mLimitedCount:I

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

.field private mNoLogs:Landroid/widget/TextView;

.field private mRecentListener:Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;

.field private mSelectedContactHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToolsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

.field private mViewBy:I

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z

    .line 129
    sput v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPosition:I

    .line 131
    sput v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPositionY:I

    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    .line 119
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFocusState:Z

    .line 123
    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    .line 125
    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mLimitedCount:I

    .line 127
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCurrentCount:I

    .line 141
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 143
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEasyMode:Z

    .line 153
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIsSendingMSG:Z

    .line 156
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIsSelectionMode:Z

    .line 409
    const-string v0, "view_by"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    .line 411
    const-string v0, "item_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    .line 413
    const-string v0, "item_array"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    .line 415
    const-string v0, "itme_request"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_REQUEST:Ljava/lang/String;

    .line 417
    const-string v0, "itme_popup"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_POPUP:Ljava/lang/String;

    .line 419
    const-string v0, "msg_dialog"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_SEND_MSG:Ljava/lang/String;

    .line 421
    const-string v0, "max_recipient_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_MAX_COUNT:Ljava/lang/String;

    .line 423
    const-string v0, "existing_recipient_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_CURRENT_COUNT:Ljava/lang/String;

    .line 817
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCallHandler:Landroid/os/Handler;

    .line 827
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 80
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V

    return-void
.end method

.method private setDoneButton(I)V
    .locals 8
    .param p1, "size"    # I

    .prologue
    .line 848
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIsSelectionMode:Z

    if-eqz v6, :cond_2

    .line 849
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 850
    .local v2, "dataCount":I
    const/4 v1, 0x0

    .line 852
    .local v1, "checkedCount":I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 853
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 854
    .local v4, "id":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 855
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 856
    .local v0, "checked":Z
    if-eqz v0, :cond_0

    .line 857
    add-int/lit8 v1, v1, 0x1

    .line 852
    .end local v0    # "checked":Z
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 861
    .end local v4    # "id":J
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    invoke-interface {v7, v1, v6}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataSelected(IZ)V

    .line 864
    .end local v1    # "checkedCount":I
    .end local v2    # "dataCount":I
    .end local v3    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    if-eqz v6, :cond_3

    .line 865
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v6, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onSelected(I)V

    .line 866
    :cond_3
    return-void

    .line 861
    .restart local v1    # "checkedCount":I
    .restart local v2    # "dataCount":I
    .restart local v3    # "i":I
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private setObserver()V
    .locals 4

    .prologue
    .line 822
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 823
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCallHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    .line 824
    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 825
    return-void
.end method

.method private updateAllCheckState()V
    .locals 10

    .prologue
    .line 601
    const/4 v4, 0x1

    .line 602
    .local v4, "everyBodyIsOn":Z
    const/4 v3, 0x1

    .line 603
    .local v3, "everyBodyIsOff":Z
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 604
    .local v2, "dataCount":I
    const/4 v1, 0x0

    .line 606
    .local v1, "chekedCount":I
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    .line 607
    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    or-int v8, v4, v3

    if-eqz v8, :cond_1

    .line 608
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v5}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    .line 609
    .local v6, "id":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_0

    .line 610
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v5}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 611
    .local v0, "checked":Z
    if-eqz v0, :cond_0

    .line 612
    add-int/lit8 v1, v1, 0x1

    .line 613
    const/4 v3, 0x0

    .line 607
    .end local v0    # "checked":Z
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 618
    .end local v6    # "id":J
    :cond_1
    iget-boolean v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEasyMode:Z

    if-eqz v8, :cond_3

    .line 619
    if-eqz v3, :cond_2

    .line 620
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mRecentListener:Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;

    invoke-interface {v8}, Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;->onAllDataDeleted()V

    .line 634
    :goto_1
    return-void

    .line 622
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mRecentListener:Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;

    invoke-interface {v8}, Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;->onOneDataInputed()V

    goto :goto_1

    .line 625
    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setDoneButton(I)V

    .line 627
    if-eqz v3, :cond_4

    .line 628
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v8}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataDeleted()V

    goto :goto_1

    .line 630
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v8}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onOneDataInputed()V

    goto :goto_1
.end method


# virtual methods
.method public checkUpdateAllCheckState()Z
    .locals 8

    .prologue
    .line 637
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 638
    .local v2, "dataCount":I
    const/4 v1, 0x0

    .line 640
    .local v1, "chekedCount":I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 641
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 642
    .local v4, "id":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 643
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 644
    .local v0, "checked":Z
    if-eqz v0, :cond_0

    .line 645
    add-int/lit8 v1, v1, 0x1

    .line 640
    .end local v0    # "checked":Z
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 650
    .end local v4    # "id":J
    :cond_1
    if-eqz v1, :cond_2

    .line 651
    const/4 v6, 0x1

    .line 653
    :goto_1
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public clearSelectedArray()V
    .locals 2

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 556
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setAllItemChecked(Z)V

    .line 558
    :cond_0
    return-void
.end method

.method public clickHandler(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_0

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 567
    :pswitch_0
    const-string v4, "InteractionRecentFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clickhandler"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 569
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 570
    .local v0, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 571
    .local v1, "position":I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 573
    .local v2, "sba":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 574
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    .line 575
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V

    goto :goto_0

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x7f09009e
        :pswitch_0
    .end packed-switch
.end method

.method public getContactsRequest()I
    .locals 1

    .prologue
    .line 873
    sget v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mRequest:I

    return v0
.end method

.method public isSelectedItemMaxCount()Z
    .locals 15

    .prologue
    const v14, 0x7f0e0347

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 661
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getCount()I

    move-result v5

    .line 662
    .local v5, "itmeCount":I
    const/4 v7, 0x0

    .line 664
    .local v7, "selectedItemCount":I
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 665
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    .line 666
    .local v3, "id":J
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-eqz v10, :cond_0

    .line 667
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    .line 668
    .local v1, "checked":Z
    if-eqz v1, :cond_0

    .line 669
    add-int/lit8 v7, v7, 0x1

    .line 664
    .end local v1    # "checked":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    .end local v3    # "id":J
    :cond_1
    iget v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "existingRecipientCount"

    iget v13, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCurrentCount:I

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    sub-int v6, v10, v11

    .line 676
    .local v6, "remainderCount":I
    if-le v7, v6, :cond_4

    .line 678
    const-string v10, "feature_att"

    invoke-static {v10}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isSendingMSG()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 679
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e0416

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-array v12, v8, [Ljava/lang/Object;

    iget v13, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$3;

    invoke-direct {v10, p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$3;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)V

    invoke-virtual {v9, v14, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    .line 703
    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 707
    :goto_2
    return v8

    .line 688
    :cond_2
    if-lez v6, :cond_3

    .line 689
    const v0, 0x7f0e0357

    .line 694
    .local v0, "alertStringId":I
    :goto_3
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$4;

    invoke-direct {v10, p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$4;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)V

    invoke-virtual {v9, v14, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 691
    .end local v0    # "alertStringId":I
    :cond_3
    const v0, 0x7f0e0358

    .restart local v0    # "alertStringId":I
    goto :goto_3

    .end local v0    # "alertStringId":I
    :cond_4
    move v8, v9

    .line 707
    goto :goto_2
.end method

.method public isSendingMSG()Z
    .locals 1

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIsSendingMSG:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 200
    if-nez p1, :cond_1

    .line 201
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 203
    sput-object p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 546
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->view:Landroid/view/View;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->view:Landroid/view/View;

    const v1, 0x7f09008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->empty_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 551
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 218
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 222
    const v0, 0x7f04018e

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->view:Landroid/view/View;

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->view:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    .line 224
    const-string v0, "InteractionRecentFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->view:Landroid/view/View;

    const v1, 0x7f09008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->empty_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->view:Landroid/view/View;

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mNoLogs:Landroid/widget/TextView;

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mNoLogs:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDeSelectAllClicked()V
    .locals 1

    .prologue
    .line 911
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setAllItemChecked(Z)V

    .line 912
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 913
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V

    .line 914
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 369
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 375
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 381
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->stopRequestProcessing()V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v0, :cond_4

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->stopRequestProcessing()V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 394
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mToolsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v0, :cond_5

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mToolsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mToolsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 399
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 403
    :cond_6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z

    .line 404
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 405
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isSelectedItemMaxCount()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    .line 172
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 174
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFocusState:Z

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    sput v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPosition:I

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sput v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPositionY:I

    .line 180
    :cond_1
    const-string v1, "feature_marvell_dsds"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, "outState":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    .end local v0    # "outState":Landroid/os/Bundle;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v1, :cond_3

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->stopRequestProcessing()V

    .line 188
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v1, :cond_4

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->stopRequestProcessing()V

    .line 192
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mToolsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v1, :cond_5

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mToolsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 195
    :cond_5
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x7f0e0347

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 463
    const-string v7, "InteractionRecentFragment"

    const-string v8, "onRestoreInstanceState"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-nez p1, :cond_0

    .line 542
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_SEND_MSG:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIsSendingMSG:Z

    .line 468
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_MAX_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    .line 469
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_CURRENT_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCurrentCount:I

    .line 470
    const-string v7, "InteractionRecentFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onRestoreInstanceState()  mIsSendingMSG = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIsSendingMSG:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mLimitedCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mLimitedCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mCurrentCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCurrentCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v7

    const/16 v8, 0x21

    if-eq v7, v8, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v7

    const/16 v8, 0x22

    if-eq v7, v8, :cond_6

    .line 474
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 475
    .local v4, "itemCnt":I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v7

    sub-int v5, v7, v4

    .line 476
    .local v5, "offset":I
    if-gez v5, :cond_1

    .line 477
    const/4 v5, 0x0

    .line 479
    :cond_1
    const/4 v2, 0x0

    .line 480
    .local v2, "chekedCount":I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mViewBy:I

    .line 482
    const-string v7, "searchFocusState"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFocusState:Z

    .line 483
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFocusState:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v7

    if-nez v7, :cond_2

    .line 484
    const-string v7, "selectedItemPosition"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPosition:I

    .line 485
    const-string v7, "selectedItemPositionY"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPositionY:I

    .line 486
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    sget v8, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPosition:I

    sget v9, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPositionY:I

    invoke-virtual {v7, v8, v9}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 487
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->requestFocus()Z

    .line 490
    :cond_2
    if-lez v4, :cond_4

    .line 491
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    .line 492
    .local v1, "checkedarray":[Z
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 493
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    add-int v8, v3, v5

    aget-boolean v9, v1, v3

    invoke-virtual {v7, v8, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 494
    aget-boolean v7, v1, v3

    if-eqz v7, :cond_3

    .line 495
    add-int/lit8 v2, v2, 0x1

    .line 492
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 499
    .end local v1    # "checkedarray":[Z
    .end local v3    # "i":I
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_POPUP:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 500
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_6

    .line 501
    :cond_5
    iget v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "existingRecipientCount"

    iget v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCurrentCount:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sub-int v6, v7, v8

    .line 502
    .local v6, "remainderCount":I
    const-string v7, "feature_att"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isSendingMSG()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 503
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0416

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$1;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)V

    invoke-virtual {v7, v13, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    .line 528
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 534
    .end local v2    # "chekedCount":I
    .end local v4    # "itemCnt":I
    .end local v5    # "offset":I
    .end local v6    # "remainderCount":I
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    .line 535
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_REQUEST:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setContactsRequest(I)V

    .line 540
    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->invalidate()V

    goto/16 :goto_0

    .line 513
    .restart local v2    # "chekedCount":I
    .restart local v4    # "itemCnt":I
    .restart local v5    # "offset":I
    .restart local v6    # "remainderCount":I
    :cond_8
    if-lez v6, :cond_9

    .line 514
    const v0, 0x7f0e0357

    .line 519
    .local v0, "alertStringId":I
    :goto_3
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$2;

    invoke-direct {v8, p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$2;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)V

    invoke-virtual {v7, v13, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_2

    .line 516
    .end local v0    # "alertStringId":I
    :cond_9
    const v0, 0x7f0e0358

    .restart local v0    # "alertStringId":I
    goto :goto_3
.end method

.method public onResume()V
    .locals 25

    .prologue
    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setObserver()V

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 246
    .local v20, "currentCountryIso":Ljava/lang/String;
    const/16 v24, 0x0

    .line 247
    .local v24, "voiceMailNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "mode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 251
    .local v21, "loadMode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "maxRecipientCount"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mLimitedCount:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    .line 253
    const-string v1, "feature_chn_duos_cdma_gsm"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    const-string v2, "phone2"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v24

    .line 261
    :goto_0
    if-eqz v21, :cond_6

    const-string v1, "easy-mode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 262
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEasyMode:Z

    .line 268
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "additional"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "email-multi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_7

    .line 269
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/email"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    .line 271
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 323
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v1, :cond_1

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 327
    :cond_1
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    move-object/from16 v9, v20

    move-object/from16 v10, v24

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    .line 330
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 357
    :cond_2
    :goto_3
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 358
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 359
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_4

    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V

    .line 361
    :cond_4
    invoke-super/range {p0 .. p0}, Landroid/app/ListFragment;->onResume()V

    .line 362
    return-void

    .line 257
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    .line 265
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEasyMode:Z

    goto/16 :goto_1

    .line 273
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 274
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 275
    :cond_8
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v23, "selectionBuffer":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 278
    .local v4, "selection":Ljava/lang/String;
    const-string v18, "-1"

    .line 279
    .local v18, "UNKNOWN_NUMBER":Ljava/lang/String;
    const-string v17, "-2"

    .line 280
    .local v17, "PRIVATE_NUMBER":Ljava/lang/String;
    const-string v16, "-3"

    .line 281
    .local v16, "PAYPHONE_NUMBER":Ljava/lang/String;
    const-string v19, "-4"

    .line 282
    .local v19, "UNKNOWN_PHONE":Ljava/lang/String;
    const-string v15, "P"

    .line 284
    .local v15, "NW_RESTRICTED":Ljava/lang/String;
    const-string v1, "number"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, "!=-1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, " AND number!=-2"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, " AND number!=-3"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string v1, " AND number!=-4"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, " AND number!=\'P\'"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v1, "ctc_vip_mode"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 291
    const-string v1, " AND (reject_flag!=1 OR reject_flag ISNULL)"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_9
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 295
    const-string v6, ""

    .line 298
    .local v6, "sortOrder":Ljava/lang/String;
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 299
    const-string v6, "date DESC, _id DESC"

    .line 307
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_2

    .line 300
    :cond_a
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "feature_kt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 302
    :cond_b
    const-string v6, "_id DESC"

    goto :goto_4

    .line 304
    :cond_c
    const-string v6, "date DESC"

    goto :goto_4

    .line 310
    .end local v4    # "selection":Ljava/lang/String;
    .end local v6    # "sortOrder":Ljava/lang/String;
    .end local v15    # "NW_RESTRICTED":Ljava/lang/String;
    .end local v16    # "PAYPHONE_NUMBER":Ljava/lang/String;
    .end local v17    # "PRIVATE_NUMBER":Ljava/lang/String;
    .end local v18    # "UNKNOWN_NUMBER":Ljava/lang/String;
    .end local v19    # "UNKNOWN_PHONE":Ljava/lang/String;
    .end local v23    # "selectionBuffer":Ljava/lang/StringBuilder;
    :cond_d
    const/16 v22, 0x0

    .line 311
    .local v22, "mLogSelector":I
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 312
    const/16 v22, 0x1

    .line 318
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v1, "content://logs/log_msg"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_2

    .line 315
    :cond_e
    const/16 v22, 0x0

    goto :goto_5

    .line 334
    .end local v22    # "mLogSelector":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v1, :cond_10

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 336
    :cond_10
    const-string v1, "InteractionRecentFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v1

    const/16 v2, 0x21

    if-eq v1, v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_12

    .line 339
    :cond_11
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    move-object/from16 v11, v20

    move-object/from16 v12, v24

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;Ljava/lang/String;Ljava/lang/String;ILcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mToolsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mToolsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mToolsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setLoading(Z)V

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mToolsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_3

    .line 348
    :cond_12
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    move-object/from16 v9, v20

    move-object/from16 v10, v24

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 427
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 428
    const-string v3, "InteractionRecentFragment"

    const-string v4, "onSaveInstanceState"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    .line 431
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 433
    .local v2, "itemCnt":I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mViewBy:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    const-string v3, "searchFocusState"

    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFocusState:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 436
    const-string v3, "selectedItemPosition"

    sget v4, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPosition:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    const-string v3, "selectedItemPositionY"

    sget v4, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPositionY:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    new-array v0, v2, [Z

    .line 439
    .local v0, "checkedArray":[Z
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 440
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 444
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 445
    const-string v3, "InteractionRecentFragment"

    const-string v4, "onSaveInstanceState, popup\'s showing"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_POPUP:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 451
    .end local v0    # "checkedArray":[Z
    .end local v1    # "i":I
    .end local v2    # "itemCnt":I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 452
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_REQUEST:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_SEND_MSG:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIsSendingMSG:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_MAX_COUNT:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_CURRENT_COUNT:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCurrentCount:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    const-string v3, "InteractionRecentFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSaveInstanceState()  mIsSendingMSG = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIsSendingMSG:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLimitedCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mLimitedCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCurrentCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCurrentCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    sput-object p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    .line 460
    return-void
.end method

.method public onSelectAllClicked()V
    .locals 1

    .prologue
    .line 904
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setAllItemChecked(Z)V

    .line 905
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 906
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V

    .line 907
    return-void
.end method

.method public sendNum()V
    .locals 12

    .prologue
    const/16 v11, 0x24

    const/16 v10, 0x23

    .line 712
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 713
    const/4 v3, 0x0

    .line 714
    .local v3, "selectedItemCount":I
    const-string v6, "InteractionRecentFragment"

    const-string v7, "sendNum"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 716
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 717
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 718
    .local v4, "viewid":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    .line 719
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 720
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    .line 726
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    const-string v8, "number"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, "number":Ljava/lang/String;
    const-string v6, "-1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "-2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "-3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "P"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 732
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v6

    if-eq v6, v10, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v6

    if-ne v6, v11, :cond_3

    .line 734
    :cond_0
    const-string v6, "InteractionRecentFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendNum, value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 715
    .end local v1    # "number":Ljava/lang/String;
    .end local v4    # "viewid":J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 722
    .restart local v4    # "viewid":J
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    goto/16 :goto_1

    .line 738
    .restart local v1    # "number":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "5583;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 746
    .end local v1    # "number":Ljava/lang/String;
    .end local v4    # "viewid":J
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_7

    .line 747
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 748
    .local v2, "resultIntent":Landroid/content/Intent;
    const-string v6, "result"

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 749
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEasyMode:Z

    if-eqz v6, :cond_6

    .line 750
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mRecentListener:Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;

    invoke-interface {v6, v2}, Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;->onRecentListAction(Landroid/content/Intent;)V

    .line 765
    .end local v2    # "resultIntent":Landroid/content/Intent;
    :cond_5
    :goto_3
    return-void

    .line 753
    .restart local v2    # "resultIntent":Landroid/content/Intent;
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v6, v2}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onRecentListAction(Landroid/content/Intent;)V

    goto :goto_3

    .line 756
    .end local v2    # "resultIntent":Landroid/content/Intent;
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    if-eqz v6, :cond_5

    .line 757
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v6

    const/16 v7, 0x21

    if-eq v6, v7, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v6

    const/16 v7, 0x22

    if-eq v6, v7, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v6

    if-eq v6, v10, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getContactsRequest()I

    move-result v6

    if-ne v6, v11, :cond_5

    .line 761
    :cond_8
    const-string v6, "InteractionRecentFragment"

    const-string v7, "sendNum, mListener.onPickDataAction"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v6, v7}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickDataAction(Ljava/util/HashMap;)V

    goto :goto_3
.end method

.method public setAllItemChecked(Z)V
    .locals 3
    .param p1, "bCheckStatus"    # Z

    .prologue
    .line 768
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 770
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 771
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 770
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    if-eqz v2, :cond_1

    .line 774
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v2}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataDeleted()V

    .line 775
    :cond_1
    return-void
.end method

.method public setContactsRequest(I)V
    .locals 0
    .param p1, "request"    # I

    .prologue
    .line 880
    sput p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mRequest:I

    .line 881
    return-void
.end method

.method public setIsSelectionMode(Z)V
    .locals 0
    .param p1, "isSelectionMode"    # Z

    .prologue
    .line 899
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIsSelectionMode:Z

    .line 900
    return-void
.end method

.method public setMMSinformation(II)V
    .locals 0
    .param p1, "LimitedCount"    # I
    .param p2, "CurrentCount"    # I

    .prologue
    .line 894
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mLimitedCount:I

    .line 895
    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCurrentCount:I

    .line 896
    return-void
.end method

.method public setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 160
    return-void
.end method

.method public setOnRecentListListener(Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mRecentListener:Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;

    .line 164
    return-void
.end method

.method public setSendingMSG(Z)V
    .locals 0
    .param p1, "FromMMS"    # Z

    .prologue
    .line 885
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIsSendingMSG:Z

    .line 886
    return-void
.end method
