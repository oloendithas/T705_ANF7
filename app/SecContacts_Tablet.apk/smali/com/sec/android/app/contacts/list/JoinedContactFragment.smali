.class public Lcom/sec/android/app/contacts/list/JoinedContactFragment;
.super Landroid/app/ListFragment;
.source "JoinedContactFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;,
        Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final DIALOG_DENY_LINK:I = 0x1

.field private static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final JOINED_CONTACT:Ljava/lang/String; = "com.android.contacts.action.JOINED_CONTACT"

.field private static final MAX_LINKED_CONTACT_COUNT:I = 0x5

.field static final RAWCONTACT_ACCOUNT_NAME_COLUMN_INDEX:I = 0x2

.field static final RAWCONTACT_ACCOUNT_TYPE_COLUMN_INDEX:I = 0x3

.field static final RAWCONTACT_DISPLAY_NAME_COLUMN_INDEX:I = 0x1

.field static final RAWCONTACT_ID_COLUMN_INDEX:I = 0x0

.field private static final RAW_CONTACT_PROJECTION:[Ljava/lang/String;

.field public static final SAVE_MODE_JOIN:I = 0x2

.field public static final SAVE_MODE_SPLIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JoinedContact"

.field private static final TOKEN_LINKED:I

.field private static mLinkedContactsCount:I

.field private static mSelectedContactUri:Landroid/net/Uri;


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

.field private mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

.field private mList:Landroid/widget/ListView;

.field private mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/JoinedContactFragment;)Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mLinkedContactsCount:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 66
    sput p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mLinkedContactsCount:I

    return p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/list/JoinedContactFragment;)Lcom/sec/android/app/contacts/ListHoverManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Lcom/sec/android/app/contacts/ListHoverManager;)Lcom/sec/android/app/contacts/ListHoverManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/JoinedContactFragment;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/ListHoverManager;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    return-object p1
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/net/Uri;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/JoinedContactFragment;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # J

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->doSplitContactAction(Landroid/net/Uri;J)Z

    move-result v0

    return v0
.end method

.method private doSplitContactAction(Landroid/net/Uri;J)Z
    .locals 5
    .param p1, "contactLookupUri"    # Landroid/net/Uri;
    .param p2, "targetRawContactId"    # J

    .prologue
    const/4 v2, 0x0

    .line 210
    new-instance v0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;-><init>()V

    .line 212
    .local v0, "dialog":Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, p2, p3}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->setContactId(JJ)V

    .line 213
    invoke-virtual {v0, p0, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 214
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "SplitContactConfirmationDialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    const/4 v2, 0x1

    .line 223
    :cond_0
    return v2

    .line 217
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "JoinedContact"

    const-string v3, "Error occured : "

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 158
    const-string v0, "JoinedContact"

    const-string v3, "JoinedContact startQuery"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 162
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    sget-object v3, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    const-string v4, "raw_contacts2"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getSelectedContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 430
    sget-object v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 114
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 115
    .local v0, "data":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 116
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 118
    sput-object v2, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 121
    :cond_0
    if-nez v2, :cond_1

    .line 127
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v3, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;-><init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    const v0, 0x7f04017f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mView:Landroid/view/View;

    .line 141
    new-instance v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;-><init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mList:Landroid/widget/ListView;

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 148
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->startQuery()V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 182
    :cond_0
    return-void
.end method

.method public onJoinCompleted(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 424
    sput-object p1, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 426
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->startQuery()V

    .line 427
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 174
    return-void
.end method

.method public onSplitCompleted(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 418
    sput-object p1, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 420
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->startQuery()V

    .line 421
    return-void
.end method

.method public onSplitContactConfirmed(JJ)V
    .locals 9
    .param p1, "contactId1"    # J
    .param p3, "contactId2"    # J

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v5, 0x1

    const-class v6, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    const-string v7, "splitCompleted"

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createSplitContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 414
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 415
    return-void
.end method
