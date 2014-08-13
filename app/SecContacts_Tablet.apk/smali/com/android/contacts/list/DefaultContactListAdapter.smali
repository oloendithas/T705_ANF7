.class public Lcom/android/contacts/list/DefaultContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "DefaultContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;
    }
.end annotation


# static fields
.field public static final KNOX_SYNCED_ACCOUNT_KNOX:Ljava/lang/String; = "vnd.sec.contact.phone_knox"

.field public static final KNOX_SYNCED_ACCOUNT_KNOX2:Ljava/lang/String; = "vnd.sec.contact.phone_knox2"

.field public static final KNOX_SYNCED_ACCOUNT_PERSONAL:Ljava/lang/String; = "vnd.sec.contact.phone_personal"

.field public static final SIM_ONE:I = 0x1

.field public static final SIM_ZERO:I = 0x0

.field public static final SNIPPET_ARGS:Ljava/lang/String; = "\u0001,\u0001,\u2026,5"

.field public static final SNIPPET_ELLIPSIS:Ljava/lang/String; = "\u2026"

.field public static final SNIPPET_END_MATCH:C = '\u0001'

.field public static final SNIPPET_MAX_TOKENS:I = 0x5

.field public static final SNIPPET_START_MATCH:C = '\u0001'

.field private static final TAG:Ljava/lang/String; = "EAB"


# instance fields
.field private final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field private isPhoneNumberOnly:Z

.field private isVoLTEShowIcon:Z

.field private isshowNormalContactOnly:Z

.field private isshowSecretContactOnly:Z

.field private mAddPrivateMode:Z

.field private mAttachPhotoMode:Z

.field private mDeleteMode:Z

.field private mIsPhone:Z

.field private mIsSMSAvailable:Z

.field private final mListCallButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mListCallButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPhoneNumber:Ljava/lang/String;

.field private mRemovePrivateMode:Z

.field private mRingtoneMode:Z

.field private mSelectedLookupKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCallButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 112
    const-string v0, "content://com.android.contacts/contacts_list/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    .line 122
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isPhoneNumberOnly:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isshowNormalContactOnly:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isshowSecretContactOnly:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mShowCallButton:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mDeleteMode:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAddPrivateMode:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRemovePrivateMode:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isVoLTEShowIcon:Z

    .line 811
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/DefaultContactListAdapter$1;-><init>(Lcom/android/contacts/list/DefaultContactListAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mListCallButtonClickListener:Landroid/view/View$OnClickListener;

    .line 849
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/DefaultContactListAdapter$2;-><init>(Lcom/android/contacts/list/DefaultContactListAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mListCallButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactListAdapter;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactListAdapter;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/list/DefaultContactListAdapter;Lcom/android/contacts/list/ContactListItemView;IJ)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactListAdapter;
    .param p1, "x1"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindEabPresence(Lcom/android/contacts/list/ContactListItemView;IJ)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactListAdapter;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/DefaultContactListAdapter;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactListAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->getDescriptionResourceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/DefaultContactListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactListAdapter;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mIsPhone:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactListAdapter;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/list/DefaultContactListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactListAdapter;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mIsSMSAvailable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactListAdapter;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/list/DefaultContactListAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactListAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->sendEmail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactListAdapter;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindEabPresence(Lcom/android/contacts/list/ContactListItemView;IJ)Ljava/lang/Integer;
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "position"    # I
    .param p3, "contactId"    # J

    .prologue
    .line 682
    const-string v0, "EAB"

    const-string v1, "EabContactListAdapter - bindPresense "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/contacts/list/ContactListItemView;->showEabPresence(IJ)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private createMenuWidgetFromPhotoView(Landroid/view/View;Landroid/net/Uri;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "b_uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 997
    move-object v1, p2

    .line 999
    .local v1, "baseUri":Landroid/net/Uri;
    new-instance v0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getAdapterPhotoMenuList()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move-result-object v2

    invoke-direct {v0, p1, v2, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .line 1000
    .local v0, "airButtonPhotoWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setGravity(I)V

    .line 1001
    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setPosition(II)V

    .line 1002
    new-instance v2, Lcom/android/contacts/list/DefaultContactListAdapter$4;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter$4;-><init>(Lcom/android/contacts/list/DefaultContactListAdapter;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setItemSelectListener(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;)V

    .line 1018
    return-object v0
.end method

.method private createMenuWidgetFromView(Landroid/view/View;Landroid/net/Uri;II)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "b_uri"    # Landroid/net/Uri;
    .param p3, "hasPhoneNumber"    # I
    .param p4, "hasEmail"    # I

    .prologue
    .line 918
    move-object v2, p2

    .line 919
    .local v2, "baseUri":Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 920
    const/4 v1, 0x0

    .line 973
    :goto_0
    return-object v1

    .line 923
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mIsPhone:Z

    .line 924
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mIsSMSAvailable:Z

    .line 926
    invoke-direct {p0, v2, p3, p4}, Lcom/android/contacts/list/DefaultContactListAdapter;->getAdapterMenuList(Landroid/net/Uri;II)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move-result-object v0

    .line 927
    .local v0, "airButtonAdapter":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    const/4 v3, 0x1

    invoke-direct {v1, p1, v0, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .line 929
    .local v1, "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setGravity(I)V

    .line 931
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setDirection(I)V

    .line 932
    new-instance v3, Lcom/android/contacts/list/DefaultContactListAdapter$3;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/contacts/list/DefaultContactListAdapter$3;-><init>(Lcom/android/contacts/list/DefaultContactListAdapter;Landroid/net/Uri;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setItemSelectListener(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;)V

    goto :goto_0
.end method

.method private getAdapterMenuList(Landroid/net/Uri;II)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 6
    .param p1, "b_uri"    # Landroid/net/Uri;
    .param p2, "hasPhoneNumber"    # I
    .param p3, "hasEmail"    # I

    .prologue
    const/4 v5, 0x0

    .line 978
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 979
    .local v0, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;>;"
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mIsPhone:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 980
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020880

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e031f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mIsSMSAvailable:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 984
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0208cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0233

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    :cond_1
    if-eqz p3, :cond_2

    .line 988
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0208cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0232

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020895

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method private getAdapterPhotoMenuList()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 5

    .prologue
    .line 1023
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    .local v0, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;>;"
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02089a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method private getDescriptionResourceId(Ljava/lang/String;)I
    .locals 3
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 1036
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    .line 1037
    :cond_0
    const/4 v0, -0x1

    .line 1050
    :cond_1
    :goto_0
    return v0

    .line 1039
    :cond_2
    const/4 v0, 0x0

    .line 1040
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e031f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1041
    const v0, 0x7f0e031f

    goto :goto_0

    .line 1042
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1043
    const v0, 0x7f0e0233

    goto :goto_0

    .line 1044
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0232

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1045
    const v0, 0x7f0e0232

    goto :goto_0

    .line 1046
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1047
    const v0, 0x7f0e003e

    goto :goto_0
.end method

.method private hasEasPhoneNumber(Landroid/database/Cursor;)Z
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 663
    const-string v6, "workPhone"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 664
    .local v5, "workPhoneNumberIndex":I
    const-string v6, "homePhone"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 665
    .local v1, "homePhoneNumberIndex":I
    const-string v6, "mobilePhone"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 667
    .local v3, "mobilePhoneNumberIndex":I
    if-ne v5, v7, :cond_1

    move-object v4, v2

    .line 668
    .local v4, "workPhoneNumber":Ljava/lang/String;
    :goto_0
    if-ne v1, v7, :cond_2

    move-object v0, v2

    .line 669
    .local v0, "homePhoneNumber":Ljava/lang/String;
    :goto_1
    if-ne v3, v7, :cond_3

    .line 671
    .local v2, "mobilePhoneNumber":Ljava/lang/String;
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 674
    :cond_0
    const/4 v6, 0x1

    .line 676
    :goto_3
    return v6

    .line 667
    .end local v0    # "homePhoneNumber":Ljava/lang/String;
    .end local v2    # "mobilePhoneNumber":Ljava/lang/String;
    .end local v4    # "workPhoneNumber":Ljava/lang/String;
    :cond_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 668
    .restart local v4    # "workPhoneNumber":Ljava/lang/String;
    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 669
    .restart local v0    # "homePhoneNumber":Ljava/lang/String;
    :cond_3
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 676
    .restart local v2    # "mobilePhoneNumber":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 873
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "only_phones"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private sendEmail(Ljava/lang/String;)V
    .locals 4
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 1029
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1031
    .local v0, "emailIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1032
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1033
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 20
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 503
    move-object/from16 v11, p1

    check-cast v11, Lcom/android/contacts/list/ContactListItemView;

    .line 504
    .local v11, "view":Lcom/android/contacts/list/ContactListItemView;
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->isGalSearchShowMoreItem(ILandroid/database/Cursor;)Z

    move-result v17

    .local v17, "isGalSearchShowMore":Z
    move-object/from16 v5, p1

    .line 508
    check-cast v5, Lcom/android/contacts/list/ContactListItemView;

    .line 509
    .local v5, "listItemView":Lcom/android/contacts/list/ContactListItemView;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->isUserProfile(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 510
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Lcom/android/contacts/list/ContactListItemView;->setUserProfile(Z)V

    .line 512
    :cond_0
    sget-boolean v3, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/list/DefaultContactListAdapter;->isVoLTEShowIcon:Z

    if-eqz v3, :cond_1

    .line 513
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 514
    .local v8, "contactId":J
    new-instance v3, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v4, p0

    move/from16 v7, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;-><init>(Lcom/android/contacts/list/DefaultContactListAdapter;Lcom/android/contacts/list/ContactListItemView;Landroid/content/Context;IJ)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/DefaultContactListAdapter$ShowEABPresenceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 517
    .end local v8    # "contactId":J
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getUpperCaseQueryString()[C

    move-result-object v3

    :goto_0
    invoke-virtual {v11, v3}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSelectionVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 523
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/list/DefaultContactListAdapter;->mIsMultiSelectionMode:Z

    if-eqz v3, :cond_3

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/list/DefaultContactListAdapter;->mSelectedLookupKeys:Ljava/util/Collection;

    const/16 v4, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 527
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 528
    .restart local v8    # "contactId":J
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheck(JZ)V

    .line 533
    .end local v8    # "contactId":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChangingSplitRatioMode()Z

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/contacts/list/ContactListItemView;->setActivatedStateDrawables(Z)V

    .line 535
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isQuickContactEnabled()Z

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 538
    invoke-virtual {v11}, Lcom/android/contacts/list/ContactListItemView;->removePhotoViewForDeleteMode()V

    .line 553
    if-eqz v17, :cond_9

    .line 554
    invoke-virtual {v11}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    .line 569
    :goto_1
    if-eqz v17, :cond_c

    .line 570
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/android/contacts/list/ContactListItemView;->setGalSearchShowMoreItem(Z)V

    .line 571
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindNameAsGalSearchShowMore(Lcom/android/contacts/list/ContactListItemView;)V

    .line 575
    :goto_2
    sget-boolean v3, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-nez v3, :cond_4

    .line 576
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindPresenceAndStatusMessage(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 578
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_DisableAccountIconsInContactList"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 586
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindStarredIcon(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 591
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isMultiSelectEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 594
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v18

    .line 595
    .local v18, "part":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual/range {v18 .. v18}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->getHasHeader()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 596
    add-int/lit8 v3, p4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChecked(I)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    .line 604
    .end local v18    # "part":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :goto_4
    move/from16 v19, p4

    .line 605
    .local v19, "searchModePosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 606
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v18

    .line 607
    .restart local v18    # "part":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual/range {v18 .. v18}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->getHasHeader()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 608
    add-int/lit8 v19, v19, 0x1

    .line 613
    .end local v18    # "part":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_5
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isMultiSelectEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 617
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/android/contacts/list/ContactListItemView;->setEnabled(Z)V

    .line 637
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableCallButtonInList"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/list/DefaultContactListAdapter;->mShowCallButton:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/list/DefaultContactListAdapter;->mListCallButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v3}, Lcom/android/contacts/list/ContactListItemView;->setOnListCallButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/list/DefaultContactListAdapter;->mListCallButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v11, v3}, Lcom/android/contacts/list/ContactListItemView;->setOnListCallButtonLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 642
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/android/contacts/list/ContactListItemView;->showListCallButton(Landroid/net/Uri;)V

    .line 644
    move/from16 v0, p2

    int-to-long v3, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->isEasAccountPartition(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 645
    if-nez v17, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->hasEasPhoneNumber(Landroid/database/Cursor;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 646
    :cond_6
    invoke-virtual {v11}, Lcom/android/contacts/list/ContactListItemView;->hideListCallButton()V

    .line 655
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->isEasAccountPartition(I)Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v17, :cond_14

    .line 656
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindGalTitleAndCompany(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 660
    :goto_7
    return-void

    .line 517
    .end local v19    # "searchModePosition":I
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 555
    :cond_9
    move/from16 v0, p2

    int-to-long v3, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->isEasAccountPartition(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 557
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindGalPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto/16 :goto_1

    .line 559
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isQuickContactEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 560
    const/4 v14, 0x7

    const/4 v15, 0x0

    const/16 v16, 0x9

    move-object/from16 v10, p0

    move/from16 v12, p2

    move-object/from16 v13, p3

    invoke-virtual/range {v10 .. v16}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;III)V

    goto/16 :goto_1

    .line 564
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto/16 :goto_1

    .line 573
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto/16 :goto_2

    .line 582
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindAccountIcons(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto/16 :goto_3

    .line 598
    .restart local v18    # "part":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChecked(I)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    goto/16 :goto_4

    .line 601
    .end local v18    # "part":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/contacts/list/DefaultContactListAdapter;->hideCheckBox(Lcom/android/contacts/list/ContactListItemView;)V

    goto/16 :goto_4

    .line 625
    .restart local v19    # "searchModePosition":I
    :cond_10
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/android/contacts/list/ContactListItemView;->setEnabled(Z)V

    goto/16 :goto_5

    .line 629
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isMultiSelectEnabled()Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 630
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/android/contacts/list/ContactListItemView;->setEnabled(Z)V

    .line 631
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    goto/16 :goto_5

    .line 633
    :cond_12
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/android/contacts/list/ContactListItemView;->setEnabled(Z)V

    goto/16 :goto_5

    .line 649
    :cond_13
    const/16 v3, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_7

    .line 650
    invoke-virtual {v11}, Lcom/android/contacts/list/ContactListItemView;->hideListCallButton()V

    goto/16 :goto_6

    .line 658
    :cond_14
    invoke-virtual {v11}, Lcom/android/contacts/list/ContactListItemView;->hideGalTitleAndCompany()V

    goto/16 :goto_7
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 154
    instance-of v4, p1, Lcom/android/contacts/list/ProfileAndContactsLoader;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 155
    check-cast v4, Lcom/android/contacts/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->shouldIncludeProfile()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 159
    .local v1, "filter":Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 160
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "query":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 162
    const-string v2, ""

    .line 164
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 169
    sget-object v4, Lcom/android/contacts/list/DefaultContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 170
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 208
    .end local v2    # "query":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 209
    const-string v3, "sort_key"

    .line 214
    .local v3, "sortOrder":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 215
    return-void

    .line 174
    .end local v3    # "sortOrder":Ljava/lang/String;
    .restart local v2    # "query":Ljava/lang/String;
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_7

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_7

    .line 175
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 176
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 177
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 179
    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 182
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->isEasAccountPartition(J)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 183
    sget-object v4, Lcom/android/contacts/list/DefaultContactListAdapter;->FILTER_GAL_SEARCH_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 192
    :goto_2
    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-eqz v4, :cond_4

    .line 193
    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 194
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 195
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 197
    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isPhoneNumberOnly:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAddPrivateMode:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRemovePrivateMode:Z

    if-eqz v4, :cond_2

    .line 198
    :cond_5
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 185
    :cond_6
    sget-object v4, Lcom/android/contacts/list/DefaultContactListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_2

    .line 188
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_7
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 189
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 190
    sget-object v4, Lcom/android/contacts/list/DefaultContactListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_2

    .line 202
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "query":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 203
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 204
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto/16 :goto_0

    .line 211
    :cond_9
    const-string v3, "sort_key_alt"

    .restart local v3    # "sortOrder":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 2
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 257
    if-eqz p4, :cond_0

    iget v0, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 258
    sget-object v0, Lcom/android/contacts/list/DefaultContactListAdapter;->PROJECTION_DATA:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    sget-object v0, Lcom/android/contacts/list/DefaultContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 11
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    const/4 v8, 0x0

    .line 266
    if-nez p4, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v7, p2, v9

    if-nez v7, :cond_0

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v4, "selection":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v5, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v7, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v7, :pswitch_data_0

    .line 356
    :cond_2
    :goto_1
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v7

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isPhoneNumberOnly:Z

    if-eqz v7, :cond_4

    .line 357
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_13

    .line 358
    const-string v7, "has_phone_number=1"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_4
    :goto_2
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAddPrivateMode:Z

    if-eqz v7, :cond_6

    .line 365
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_5

    .line 366
    const-string v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_5
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRemovePrivateMode:Z

    if-eqz v7, :cond_14

    .line 369
    const-string v7, "is_private=1"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :goto_3
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    .line 375
    .local v3, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 376
    const-string v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v7, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 379
    const-string v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v7, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .end local v3    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_6
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mDeleteMode:Z

    if-eqz v7, :cond_8

    .line 402
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 403
    const-string v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_7
    const-string v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/app/contacts/model/PhoneReadOnlyAccountType;->getSelectionClauseToExcludeProload()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_8
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    .line 412
    .restart local v3    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 413
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 414
    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-nez v7, :cond_9

    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    if-eqz v7, :cond_b

    .line 416
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 417
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 418
    const-string v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_a
    const-string v7, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_b
    const-string v7, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-nez v7, :cond_c

    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    if-eqz v7, :cond_e

    .line 425
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 426
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 427
    const-string v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_d
    const-string v7, "(link_type1 != \'vnd.sec.contact.sim2\')"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_e
    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 461
    new-array v7, v8, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    .end local v3    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :pswitch_1
    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-eqz v7, :cond_2

    .line 284
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v1

    .line 285
    .local v1, "listWriteableAccount":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 286
    .local v2, "numberOfAccount":I
    :goto_5
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 288
    .local v6, "strWriteableAccount":Ljava/lang/StringBuffer;
    if-eqz v1, :cond_2

    if-lez v2, :cond_2

    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v2, :cond_12

    .line 291
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {v7}, Lcom/android/contacts/model/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v7

    iget-object v7, v7, Lcom/android/contacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    const-string v9, "vnd.sec.contact.phone_personal"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 289
    :cond_f
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .end local v0    # "i":I
    .end local v2    # "numberOfAccount":I
    .end local v6    # "strWriteableAccount":Ljava/lang/StringBuffer;
    :cond_10
    move v2, v8

    .line 285
    goto :goto_5

    .line 295
    .restart local v0    # "i":I
    .restart local v2    # "numberOfAccount":I
    .restart local v6    # "strWriteableAccount":Ljava/lang/StringBuffer;
    :cond_11
    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {v7}, Lcom/android/contacts/model/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v7

    iget-object v7, v7, Lcom/android/contacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v7, v2, -0x1

    if-ge v0, v7, :cond_f

    .line 299
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 303
    :cond_12
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id IN (SELECT contact_id FROM view_raw_contacts_restricted WHERE account_type_and_data_set IN ( "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 319
    .end local v0    # "i":I
    .end local v1    # "listWriteableAccount":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v2    # "numberOfAccount":I
    .end local v6    # "strWriteableAccount":Ljava/lang/StringBuffer;
    :pswitch_2
    const-string v7, "starred!=0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 328
    :pswitch_3
    const-string v7, "in_visible_group=1"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 340
    :pswitch_4
    const-string v7, "mimetype=? AND data1=?"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-wide v9, p4, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 347
    :pswitch_5
    const-string v7, "link_accounts NOT LIKE \'%vnd.sec.contact.phone_personal%\' AND link_accounts NOT LIKE \'%vnd.sec.contact.phone_knox%\' AND link_accounts NOT LIKE \'%vnd.sec.contact.phone_knox2%\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 360
    :cond_13
    const-string v7, " AND has_phone_number=1"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 371
    :cond_14
    const-string v7, "is_private=0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 434
    .restart local v3    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_15
    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v7

    if-eqz v7, :cond_16

    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-nez v7, :cond_16

    iget-boolean v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    if-eqz v7, :cond_e

    .line 435
    :cond_16
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 436
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 437
    const-string v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_17
    const-string v7, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 277
    nop

    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 9
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, -0x6

    .line 218
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 219
    .local v2, "uri":Landroid/net/Uri;
    if-eqz p4, :cond_0

    .line 220
    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 221
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 232
    :cond_0
    :goto_0
    cmp-long v3, p2, v7

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 237
    :cond_1
    if-eqz p4, :cond_3

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_3

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eq v3, v6, :cond_3

    .line 240
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 241
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v3, "directory"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 243
    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_2

    .line 244
    invoke-virtual {p4, v0}, Lcom/android/contacts/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 246
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 249
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_3
    iget-boolean v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-eqz v3, :cond_4

    .line 250
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 251
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->applyDataRestriction(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 252
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 253
    return-void

    .line 222
    :cond_5
    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v3, v6, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "lookupKey":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 225
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 227
    :cond_6
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getSelectedContactId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public getDeleteMode()Z
    .locals 1

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mDeleteMode:Z

    return v0
.end method

.method public getEmailAddress(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 758
    if-nez p1, :cond_1

    .line 759
    const-string v0, "EAB"

    const-string v2, "Contact URI is null."

    invoke-static {v0, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_0
    :goto_0
    return-object v3

    .line 763
    :cond_1
    const-string v0, "entities"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 764
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "EAB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionStarted() / uri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "data1"

    aput-object v4, v2, v9

    const-string v4, "is_super_primary"

    aput-object v4, v2, v11

    const-string v4, "mimetype"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 775
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 777
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 779
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 783
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 784
    .local v7, "isSuperPrimary":I
    if-eqz v7, :cond_2

    .line 785
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 786
    .local v8, "sendEmailAddress":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 787
    goto :goto_0

    .line 796
    .end local v7    # "isSuperPrimary":I
    .end local v8    # "sendEmailAddress":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 798
    :cond_4
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 799
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 800
    .restart local v8    # "sendEmailAddress":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 801
    goto/16 :goto_0

    .line 803
    .end local v8    # "sendEmailAddress":Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 805
    :cond_6
    if-eqz v6, :cond_0

    .line 806
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getEnableTouchScreenHeight()I
    .locals 6

    .prologue
    .line 865
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 866
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 867
    .local v0, "dsp":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feae147ae147ae1L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method

.method public final getPhonenumber(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p1, "baseUri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 705
    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mPhoneNumber:Ljava/lang/String;

    .line 707
    if-nez p1, :cond_0

    .line 753
    :goto_0
    return-object v3

    .line 711
    :cond_0
    const-string v0, "entities"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 712
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "data1"

    aput-object v4, v2, v8

    const-string v4, "is_super_primary"

    aput-object v4, v2, v10

    const-string v4, "mimetype"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 723
    .local v7, "phonecursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 725
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 727
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 732
    .local v6, "isSuperPrimary":I
    if-eqz v6, :cond_1

    .line 733
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mPhoneNumber:Ljava/lang/String;

    .line 741
    .end local v6    # "isSuperPrimary":I
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 742
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 744
    :cond_3
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 745
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mPhoneNumber:Ljava/lang/String;

    .line 750
    :cond_4
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 753
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mPhoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 748
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1
.end method

.method public needToDisabled(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 690
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSimContact(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 691
    .local v0, "isSimContactInDeleteMode":Z
    :goto_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSim2Contact(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 692
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v2

    .line 699
    :cond_0
    :goto_1
    const/4 v1, 0x0

    .line 701
    .local v1, "isUserProfileWithAabInDeleteMode":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    return v3

    .end local v0    # "isSimContactInDeleteMode":Z
    .end local v1    # "isUserProfileWithAabInDeleteMode":Z
    :cond_3
    move v0, v3

    .line 690
    goto :goto_0

    .restart local v0    # "isSimContactInDeleteMode":Z
    :cond_4
    move v0, v3

    .line 692
    goto :goto_1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 475
    const/4 v1, 0x0

    .line 477
    .local v1, "view":Lcom/android/contacts/list/ContactListItemView;
    sget-boolean v2, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v2, :cond_2

    .line 478
    new-instance v1, Lcom/android/contacts/list/ContactListItemView;

    .end local v1    # "view":Lcom/android/contacts/list/ContactListItemView;
    invoke-direct {v1, p1, v3}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 479
    .restart local v1    # "view":Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getCheckBoxDirection()Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setCheckBoxPosition(Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;)V

    .line 480
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isQuickContactEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 482
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSelectionVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 484
    iget-boolean v2, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mIsItemViewLayerTypeSoftware:Z

    if-eqz v2, :cond_0

    .line 485
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/list/ContactListItemView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    move-object v0, v1

    .line 497
    :cond_1
    :goto_0
    return-object v0

    .line 489
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 494
    .local v0, "mView":Landroid/view/View;
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSelectionVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    const v2, 0x7f020937

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setAddPrivateMode(ZZ)V
    .locals 0
    .param p1, "AddPrivateMode"    # Z
    .param p2, "RemovePrivateMode"    # Z

    .prologue
    .line 912
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAddPrivateMode:Z

    .line 913
    iput-boolean p2, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRemovePrivateMode:Z

    .line 914
    return-void
.end method

.method public setAttachPhotoMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    .line 470
    return-void
.end method

.method public setCheckedIds(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 896
    .local p1, "checkedIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 897
    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 0
    .param p1, "deleteMode"    # Z

    .prologue
    .line 904
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mDeleteMode:Z

    .line 905
    return-void
.end method

.method public setDisplayCallButton(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 900
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mShowCallButton:Z

    .line 901
    return-void
.end method

.method public setPhoneNumbersOnly(Z)V
    .locals 0
    .param p1, "isOnly"    # Z

    .prologue
    .line 883
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isPhoneNumberOnly:Z

    .line 884
    return-void
.end method

.method public setRingToneMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 465
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    .line 466
    return-void
.end method

.method public setSelectedLookupKeys(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 878
    .local p1, "selectedLookupKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mSelectedLookupKeys:Ljava/util/Collection;

    .line 879
    return-void
.end method

.method public setshowNormalContactOnly(Z)V
    .locals 0
    .param p1, "showNormalContactOnly"    # Z

    .prologue
    .line 887
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isshowNormalContactOnly:Z

    .line 888
    return-void
.end method

.method public setshowSecretContactOnly(Z)V
    .locals 0
    .param p1, "showSecretContactOnly"    # Z

    .prologue
    .line 891
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isshowSecretContactOnly:Z

    .line 892
    return-void
.end method
