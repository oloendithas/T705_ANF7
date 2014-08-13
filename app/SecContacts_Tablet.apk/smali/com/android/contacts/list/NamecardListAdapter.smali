.class public Lcom/android/contacts/list/NamecardListAdapter;
.super Lcom/android/contacts/list/DefaultContactListAdapter;
.source "NamecardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/NamecardListAdapter$ActionDescription;,
        Lcom/android/contacts/list/NamecardListAdapter$ActionDescriptionAdapter;,
        Lcom/android/contacts/list/NamecardListAdapter$ViewCache;
    }
.end annotation


# static fields
.field public static final CALL_TYPE:I = 0x1

.field public static final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field public static final CONTACT_URI_FOR_NAMECARD:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field public static final EMAIL_TYPE:I = 0x3

.field public static final MMS_TYPE:I = 0x2

.field public static final NAMECARD_COMPANY_COLUMN_INDEX:I = 0x12

.field public static final NAMECARD_CONTACT_ID_COLUMN_INDEX:I = 0x0

.field public static final NAMECARD_DISPLAY_NAME_COLUMN_INDEX:I = 0x1

.field public static final NAMECARD_HAS_EMAIL_COLUMN_INDEX:I = 0x10

.field public static final NAMECARD_HAS_PHONE_COLUMN_INDEX:I = 0xb

.field public static final NAMECARD_IS_PRIVATE_COLUMN_INDEX:I = 0xf

.field public static final NAMECARD_JOB_TITLE_COLUMN_INDEX:I = 0x13

.field public static final NAMECARD_LOOKUP_KEY_COLUMN_INDEX:I = 0x9

.field public static final NAMECARD_ONLY_PHOTO_URI_COLUMN_INDEX:I = 0x14

.field public static final NAMECARD_PHOTO_URI_COLUMN_INDEX:I = 0x11

.field public static final ORDER_BY_COMPANY:I = 0x3

.field public static final ORDER_BY_NAME:I = 0x2

.field public static final ORDER_BY_OLD:I = 0x1

.field public static final ORDER_BY_RECENT:I = 0x0

.field public static final PROJECTION_CONTACT_NAMECARD:[Ljava/lang/String;

.field public static final SELECTION_CONTACT_NAMECARD:Ljava/lang/String; = "is_private > 0 and namecard_photo_uri IS NOT NULL"

.field public static final SORT_ORDER_COMPANY:Ljava/lang/String; = "CASE WHEN data1 IS NULL THEN 1 ELSE 0 END, data1"

.field public static final SORT_ORDER_NAME:Ljava/lang/String; = "sort_key"

.field public static final SORT_ORDER_OLD:Ljava/lang/String; = "_id ASC"

.field public static mActivity:Landroid/app/Activity;


# instance fields
.field isEmptyView:Z

.field private mCurrentOrder:I

.field private mDeleteUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "is_private"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "has_email"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "namecard_photo_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/NamecardListAdapter;->PROJECTION_CONTACT_NAMECARD:[Ljava/lang/String;

    .line 110
    const-string v0, "content://com.android.contacts/contacts/namecard"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/NamecardListAdapter;->CONTACT_URI_FOR_NAMECARD:Landroid/net/Uri;

    .line 113
    const-string v0, "content://com.android.contacts/contacts_list/namecard/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/NamecardListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 79
    iput v1, p0, Lcom/android/contacts/list/NamecardListAdapter;->mCurrentOrder:I

    .line 576
    iput-boolean v1, p0, Lcom/android/contacts/list/NamecardListAdapter;->isEmptyView:Z

    .line 134
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    sput-object p1, Lcom/android/contacts/list/NamecardListAdapter;->mActivity:Landroid/app/Activity;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mDeleteUris:Ljava/util/ArrayList;

    .line 136
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/NamecardListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/NamecardListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/NamecardListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mCurrentOrder:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/list/NamecardListAdapter;Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/NamecardListAdapter;->buildDialog(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildDialog(Ljava/util/ArrayList;I)V
    .locals 3
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p1, "possibleActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 542
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/android/contacts/list/NamecardListAdapter$ActionDescriptionAdapter;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/list/NamecardListAdapter$ActionDescriptionAdapter;-><init>(Lcom/android/contacts/list/NamecardListAdapter;Ljava/util/ArrayList;)V

    new-instance v2, Lcom/android/contacts/list/NamecardListAdapter$7;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/contacts/list/NamecardListAdapter$7;-><init>(Lcom/android/contacts/list/NamecardListAdapter;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 572
    iget-object v1, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040685

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 574
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 575
    return-void
.end method

.method private inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "layoutId"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private setButtonEvent2(Lcom/android/contacts/list/NamecardListAdapter$ViewCache;Landroid/database/Cursor;)V
    .locals 13
    .param p1, "cache"    # Lcom/android/contacts/list/NamecardListAdapter$ViewCache;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 325
    const/16 v11, 0xb

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 326
    .local v4, "hasPhone":I
    const/16 v11, 0x10

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 328
    .local v3, "hasEmail":I
    const/4 v11, 0x0

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 329
    .local v1, "contactId":I
    const/16 v11, 0x9

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 331
    .local v9, "lookupKey":Ljava/lang/String;
    int-to-long v11, v1

    invoke-static {v11, v12, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 332
    .local v10, "lookupUri":Landroid/net/Uri;
    const-string v11, "data"

    invoke-static {v10, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 334
    .local v2, "dataUri":Landroid/net/Uri;
    const/16 v11, 0x12

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "companyName":Ljava/lang/String;
    const/16 v11, 0x13

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 337
    .local v8, "jobTitle":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 338
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCompany:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    .end local v8    # "jobTitle":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListAdapter;->getDeleteMode()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 345
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 346
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->bringToFront()V

    .line 347
    iget-object v11, p0, Lcom/android/contacts/list/NamecardListAdapter;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 348
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 353
    :goto_1
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mTextArea:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mMMSDivider:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mEmailDivider:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    :goto_2
    return-void

    .line 340
    .restart local v8    # "jobTitle":Ljava/lang/String;
    :cond_0
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCompany:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCompany:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .end local v8    # "jobTitle":Ljava/lang/String;
    :goto_3
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .restart local v8    # "jobTitle":Ljava/lang/String;
    :cond_1
    move-object v8, v0

    goto :goto_3

    .line 350
    .end local v8    # "jobTitle":Ljava/lang/String;
    :cond_2
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 362
    :cond_3
    if-lez v4, :cond_4

    iget-object v11, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v7, 0x1

    .line 363
    .local v7, "isPhonePossible":Z
    :goto_4
    if-lez v4, :cond_5

    iget-object v11, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v6, 0x1

    .line 364
    .local v6, "isMMSPossible":Z
    :goto_5
    if-lez v3, :cond_6

    iget-object v11, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEmailAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v5, 0x1

    .line 366
    .local v5, "isEmailPossible":Z
    :goto_6
    if-eqz v7, :cond_7

    .line 367
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 369
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    new-instance v12, Lcom/android/contacts/list/NamecardListAdapter$4;

    invoke-direct {v12, p0, v2}, Lcom/android/contacts/list/NamecardListAdapter$4;-><init>(Lcom/android/contacts/list/NamecardListAdapter;Landroid/net/Uri;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    :goto_7
    if-eqz v6, :cond_9

    .line 418
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_8

    .line 420
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mMMSDivider:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 424
    :goto_8
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 425
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    new-instance v12, Lcom/android/contacts/list/NamecardListAdapter$5;

    invoke-direct {v12, p0, v2}, Lcom/android/contacts/list/NamecardListAdapter$5;-><init>(Lcom/android/contacts/list/NamecardListAdapter;Landroid/net/Uri;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    :goto_9
    if-eqz v5, :cond_b

    .line 483
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_a

    .line 485
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mEmailDivider:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :goto_a
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 490
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    new-instance v12, Lcom/android/contacts/list/NamecardListAdapter$6;

    invoke-direct {v12, p0, v2}, Lcom/android/contacts/list/NamecardListAdapter$6;-><init>(Lcom/android/contacts/list/NamecardListAdapter;Landroid/net/Uri;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 362
    .end local v5    # "isEmailPossible":Z
    .end local v6    # "isMMSPossible":Z
    .end local v7    # "isPhonePossible":Z
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 363
    .restart local v7    # "isPhonePossible":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    .line 364
    .restart local v6    # "isMMSPossible":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    .line 414
    .restart local v5    # "isEmailPossible":Z
    :cond_7
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 422
    :cond_8
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mMMSDivider:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 478
    :cond_9
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mMMSDivider:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 487
    :cond_a
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mEmailDivider:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 535
    :cond_b
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 536
    iget-object v11, p1, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mEmailDivider:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 9
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;

    .line 263
    .local v0, "cache":Lcom/android/contacts/list/NamecardListAdapter$ViewCache;
    move-object v2, p1

    .line 267
    .local v2, "item":Landroid/view/View;
    const/16 v6, 0x14

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "photoUriString":Ljava/lang/String;
    if-nez v4, :cond_2

    const/4 v3, 0x0

    .line 269
    .local v3, "photoUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v6

    iget-object v7, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mImage:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8}, Lcom/android/contacts/ContactPhotoManager;->loadNamecardDetailPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V

    .line 271
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListAdapter;->getDeleteMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 272
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/NamecardListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 273
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "queryString":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mImage:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/contacts/list/NamecardListAdapter$1;

    invoke-direct {v7, p0, v5, p4}, Lcom/android/contacts/list/NamecardListAdapter$1;-><init>(Lcom/android/contacts/list/NamecardListAdapter;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v6, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mImage:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/contacts/list/NamecardListAdapter$2;

    invoke-direct {v7, p0, v2}, Lcom/android/contacts/list/NamecardListAdapter$2;-><init>(Lcom/android/contacts/list/NamecardListAdapter;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 293
    iget-object v6, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mTextArea:Landroid/view/View;

    new-instance v7, Lcom/android/contacts/list/NamecardListAdapter$3;

    invoke-direct {v7, p0, v1}, Lcom/android/contacts/list/NamecardListAdapter$3;-><init>(Lcom/android/contacts/list/NamecardListAdapter;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    .end local v1    # "contactUri":Landroid/net/Uri;
    .end local v5    # "queryString":Ljava/lang/String;
    :cond_0
    iget-object v6, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mDisplayName:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListAdapter;->isVoLTEEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 304
    const-string v6, "feature_kor"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 305
    const-string v6, "feature_skt"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 306
    iget-object v6, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const v7, 0x7f0205f9

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    :cond_1
    :goto_1
    invoke-direct {p0, v0, p3}, Lcom/android/contacts/list/NamecardListAdapter;->setButtonEvent2(Lcom/android/contacts/list/NamecardListAdapter$ViewCache;Landroid/database/Cursor;)V

    .line 321
    return-void

    .line 268
    .end local v3    # "photoUri":Landroid/net/Uri;
    :cond_2
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 307
    .restart local v3    # "photoUri":Landroid/net/Uri;
    :cond_3
    const-string v6, "feature_kt"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 308
    iget-object v6, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const v7, 0x7f0205f6

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 309
    :cond_4
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 310
    iget-object v6, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const v7, 0x7f0205f7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 313
    :cond_5
    iget-object v6, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const v7, 0x7f0205f8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 316
    :cond_6
    iget-object v6, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const v7, 0x7f020679

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 5
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 142
    instance-of v3, p1, Lcom/android/contacts/list/ProfileAndContactsLoader;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 143
    check-cast v3, Lcom/android/contacts/list/ProfileAndContactsLoader;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "query":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 148
    const-string v1, ""

    .line 150
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    sget-object v3, Lcom/android/contacts/list/NamecardListAdapter;->CONTACT_URI_FOR_NAMECARD:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 159
    :goto_0
    sget-object v3, Lcom/android/contacts/list/NamecardListAdapter;->PROJECTION_CONTACT_NAMECARD:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 160
    const-string v3, "is_private > 0 and namecard_photo_uri IS NOT NULL"

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, "sortOrder":Ljava/lang/String;
    iget v3, p0, Lcom/android/contacts/list/NamecardListAdapter;->mCurrentOrder:I

    packed-switch v3, :pswitch_data_0

    .line 174
    const-string v2, "_id DESC"

    .line 177
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 178
    return-void

    .line 155
    .end local v2    # "sortOrder":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/android/contacts/list/NamecardListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 156
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 157
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 165
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .restart local v2    # "sortOrder":Ljava/lang/String;
    :pswitch_0
    const-string v2, "_id ASC"

    .line 166
    goto :goto_1

    .line 168
    :pswitch_1
    const-string v2, "sort_key"

    .line 169
    goto :goto_1

    .line 171
    :pswitch_2
    const-string v2, "CASE WHEN data1 IS NULL THEN 1 ELSE 0 END, data1"

    .line 172
    goto :goto_1

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 590
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 591
    .local v0, "contactId":J
    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public getShowAllContactsLabelCursor()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 582
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/contacts/list/NamecardListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 583
    .local v0, "matrixCursor":Landroid/database/MatrixCursor;
    sget-object v2, Lcom/android/contacts/list/NamecardListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/Object;

    .line 584
    .local v1, "row":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 585
    return-object v0
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 219
    const/4 v6, 0x0

    .line 220
    .local v6, "view":Landroid/view/View;
    if-nez p4, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/NamecardListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 226
    :goto_0
    invoke-virtual {p0, v6, p1, p2, p3}, Lcom/android/contacts/list/NamecardListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 227
    return-object v6

    .line 223
    :cond_0
    move-object v6, p4

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    .line 233
    const v2, 0x7f04019e

    invoke-direct {p0, v2, p5}, Lcom/android/contacts/list/NamecardListAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 234
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;

    iget-object v2, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v4}, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;-><init>(Lcom/android/contacts/list/NamecardListAdapter;Landroid/content/Context;Z)V

    .line 235
    .local v0, "cache":Lcom/android/contacts/list/NamecardListAdapter$ViewCache;
    const v2, 0x7f09018d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 236
    const v2, 0x7f0903a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mImage:Landroid/widget/ImageView;

    .line 237
    const v2, 0x7f0903a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mTextArea:Landroid/view/View;

    .line 238
    const v2, 0x7f09010a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mDisplayName:Landroid/widget/TextView;

    .line 239
    const v2, 0x7f090203

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCompany:Landroid/widget/TextView;

    .line 241
    const v2, 0x7f09039a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    .line 243
    const v2, 0x7f090144

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mMMSDivider:Landroid/view/View;

    .line 244
    const v2, 0x7f0903a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    .line 246
    const v2, 0x7f090146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mEmailDivider:Landroid/view/View;

    .line 247
    const v2, 0x7f0903aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    .line 249
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 251
    iget-object v2, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 252
    iget-object v2, v0, Lcom/android/contacts/list/NamecardListAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 255
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 256
    return-object v1
.end method

.method public setCustomSortOrder(I)V
    .locals 0
    .param p1, "order"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/android/contacts/list/NamecardListAdapter;->mCurrentOrder:I

    .line 182
    return-void
.end method

.method public setDeleteUris(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, "deleteUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/android/contacts/list/NamecardListAdapter;->mDeleteUris:Ljava/util/ArrayList;

    .line 597
    return-void
.end method

.method public setEmptyView(Z)V
    .locals 0
    .param p1, "isEmpty"    # Z

    .prologue
    .line 578
    iput-boolean p1, p0, Lcom/android/contacts/list/NamecardListAdapter;->isEmptyView:Z

    .line 579
    return-void
.end method
