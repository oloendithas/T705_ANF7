.class public Lcom/android/contacts/detail/ContactLoaderFragment;
.super Landroid/app/Fragment;
.source "ContactLoaderFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
.implements Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;,
        Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    }
.end annotation


# static fields
.field private static final DIALOG_CANCEL:I = 0x64

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final KEY_IS_BLACK_LIST_CONTACT:Ljava/lang/String; = "isBlackListContact"

.field private static final KEY_OPTIONS_MENU_EDITABLE:Ljava/lang/String; = "optionsMenuEditable"

.field private static final KEY_OPTIONS_MENU_EXCEPT_EASYMODE:Ljava/lang/String; = "optionsMenuExceptEasymode"

.field private static final KEY_OPTIONS_MENU_EXCEPT_SIM:Ljava/lang/String; = "optionsMenuExceptSim"

.field private static final KEY_OPTIONS_MENU_EXCEPT_SIM_AIRPLANE:Ljava/lang/String; = "optionsMenuExceptSimAirplane"

.field private static final KEY_OPTIONS_MENU_OPTIONS:Ljava/lang/String; = "optionsMenuOptions"

.field private static final KEY_OPTIONS_MENU_PHONE_NUMBER:Ljava/lang/String; = "optionsMenuPhoneNumber"

.field private static final KEY_OPTIONS_MENU_PROFILE:Ljava/lang/String; = "optionsMenuUserProfile"

.field private static final KEY_OPTIONS_MENU_SEPARATE:Ljava/lang/String; = "optionsMenuSeparate"

.field private static final KEY_OPTIONS_MENU_SHAREABLE:Ljava/lang/String; = "optionsMenuShareable"

.field private static final KEY_OPTIONS_MENU_WRITABLE:Ljava/lang/String; = "optionsMenuWritable"

.field private static final KEY_SEND_TO_VOICE_MAIL_STATE:Ljava/lang/String; = "sendToVoicemailState"

.field private static final LOADER_ARG_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final LOADER_DETAILS:I = 0x1

.field private static final REQUEST_CODE_PICK_RINGTONE:I = 0x1

.field private static final SHARE_VIA_DISPLAY_MAX_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contactMDN:Z

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mContext:Landroid/content/Context;

.field private mCustomRingtone:Ljava/lang/String;

.field private final mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogCancelhandler:Landroid/os/Handler;

.field private mFavoriteListener:Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

.field private mIsBlackListContact:Z

.field private mIsKNOXMode:Z

.field private mIsOptionsMenuChanged:Z

.field private mIsPrivateContact:Z

.field private mIsUsingTwoPanes:Z

.field private mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

.field private mLookupUri:Landroid/net/Uri;

.field private mOptionsMenuEditable:Z

.field private mOptionsMenuExceptEasyMode:Z

.field private mOptionsMenuExceptSim:Z

.field private mOptionsMenuExceptSimAirplane:Z

.field private mOptionsMenuOptions:Z

.field private mOptionsMenuPhoneNumber:Z

.field private mOptionsMenuSeparate:Z

.field private mOptionsMenuShareable:Z

.field private mOptionsMenuUserProfile:Z

.field private mOptionsMenuWritable:Z

.field private mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

.field private mRefreshDialog:Landroid/app/Dialog;

.field private mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

.field private mSendToVoicemailState:Z

.field private mSharePopupMenu:Landroid/widget/ListPopupWindow;

.field private mSpeedDialTutorialMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const-class v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->contactMDN:Z

    .line 304
    new-instance v0, Lcom/android/contacts/detail/ContactLoaderFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactLoaderFragment$1;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    .line 428
    new-instance v0, Lcom/android/contacts/detail/ContactLoaderFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactLoaderFragment$2;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mRefreshDialog:Landroid/app/Dialog;

    .line 1204
    new-instance v0, Lcom/android/contacts/detail/ContactLoaderFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactLoaderFragment$3;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDialogCancelhandler:Landroid/os/Handler;

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;
    .param p1, "x1"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/detail/ContactLoaderFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mFavoriteListener:Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/ContactLoaderFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->setContactInfos()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mRefreshDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method private addToVipList(Landroid/net/Uri;Z)V
    .locals 9
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "isWhiteList"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1217
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v6

    .line 1218
    .local v6, "beforeNormalize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1219
    .local v4, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 1221
    .local v8, "intent":Landroid/content/Intent;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 1222
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1227
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1228
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e039f

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1253
    :goto_1
    return-void

    .line 1230
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 1231
    if-eqz p2, :cond_3

    .line 1232
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0e039e

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 1237
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x2

    const v3, 0x7f0e039d

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 1243
    :cond_4
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1244
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1245
    const-string v1, "number"

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1246
    if-eqz p2, :cond_5

    .line 1247
    const-string v0, "list"

    const-string v1, "whitelist"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1251
    :goto_2
    invoke-virtual {p0, v8}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1249
    :cond_5
    const-string v0, "list"

    const-string v1, "blacklist"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private copyToDialingScreen(Landroid/net/Uri;)V
    .locals 8
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1257
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v4

    .line 1258
    .local v4, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1260
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 1261
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0e0234

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    .line 1269
    :goto_0
    return-void

    .line 1265
    :cond_0
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    const-string v3, "tel"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v6, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1266
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v0, "withSpecialChar"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1267
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private createLauncherShortcutWithContact()V
    .locals 3

    .prologue
    .line 1453
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1455
    .local v1, "parentActivity":Landroid/app/Activity;
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder;

    new-instance v2, Lcom/android/contacts/detail/ContactLoaderFragment$4;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$4;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 1466
    .local v0, "builder":Lcom/android/contacts/list/ShortcutIntentBuilder;
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    .line 1467
    return-void
.end method

.method private doPickRingtone()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1314
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1316
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1318
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1320
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1323
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1324
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1331
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :goto_0
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1334
    invoke-virtual {p0, v0, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1335
    return-void

    .line 1327
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    :cond_0
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private getPhoneNumbers(J)Ljava/util/ArrayList;
    .locals 11
    .param p1, "contactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 1272
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1273
    .local v8, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v10

    const-string v0, "data2"

    aput-object v0, v2, v1

    .line 1276
    .local v2, "projection":[Ljava/lang/String;
    const-string v9, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 1278
    .local v9, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 1282
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1285
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1286
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1289
    :cond_0
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1291
    .local v7, "phoneNum":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1294
    .end local v7    # "phoneNum":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 1295
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1298
    :cond_2
    return-object v8
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .locals 4
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 1390
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1391
    :cond_0
    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    .line 1398
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1399
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1401
    return-void

    .line 1393
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1394
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getMediaContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1396
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0
.end method

.method private isFDNEnabled()Z
    .locals 4

    .prologue
    .line 887
    const/4 v0, 0x0

    .line 889
    .local v0, "isFDNEnabled":Z
    :try_start_0
    const-string v3, "phoneext"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 890
    .local v1, "phone":Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v1, :cond_0

    .line 891
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->isSimFDNEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 895
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephonyExt;
    :cond_0
    :goto_0
    return v0

    .line 892
    :catch_0
    move-exception v2

    .line 893
    .local v2, "re":Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setContactInfos()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 491
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactOptionsChangeEnabled()Z

    move-result v3

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v3

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactShareable()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 494
    :cond_0
    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsOptionsMenuChanged:Z

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactOptionsChangeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    .line 497
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    .line 498
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactWritable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuWritable:Z

    .line 499
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactShareable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    .line 500
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactUserProfile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    .line 501
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->hasContactPhoneNumber()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    .line 502
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactSim()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    .line 503
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isSimAirplane()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    .line 505
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isSendToVoicemail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 507
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getCustomRingtone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_5

    :goto_2
    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuSeparate:Z

    .line 510
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 502
    goto :goto_0

    :cond_4
    move v0, v2

    .line 503
    goto :goto_1

    :cond_5
    move v1, v2

    .line 508
    goto :goto_2
.end method

.method private simplifyTutorialMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 877
    const v2, 0x7f0904f5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 878
    .local v0, "deleteMenu":Landroid/view/MenuItem;
    const v2, 0x7f090537

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 879
    .local v1, "editMenu":Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 880
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 881
    const v2, 0x7f020894

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 882
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 883
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 884
    return-void
.end method


# virtual methods
.method public doDeleteAction()V
    .locals 2

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDeleteRequested(Landroid/net/Uri;)V

    .line 1471
    :cond_0
    return-void
.end method

.method public doEditAction()V
    .locals 6

    .prologue
    const v5, 0x7f0e021f

    const/4 v4, 0x0

    .line 1494
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1495
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1496
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v1

    .line 1497
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    invoke-virtual {v2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, "accountType":Ljava/lang/String;
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSimInitializing(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1501
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1523
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :cond_0
    :goto_0
    return-void

    .line 1503
    .restart local v0    # "accountType":Ljava/lang/String;
    .restart local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :cond_1
    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSimInitializing(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1505
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1508
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v2, v3}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_0

    .line 1511
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v2, v3}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_0

    .line 1514
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSimInitializing(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1517
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1520
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v2, v3}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public doShareNameCardAction(Landroid/view/View;)Z
    .locals 11
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1526
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v8, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v6, v7

    .line 1587
    :goto_0
    return v6

    .line 1530
    :cond_1
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v8}, Lcom/android/contacts/ContactLoader$Result;->getLookupKey()Ljava/lang/String;

    move-result-object v1

    .line 1531
    .local v1, "lookupKey":Ljava/lang/String;
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v8, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1532
    .local v5, "shareUri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v8}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1538
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/android/contacts/util/ContactLoaderUtils;->getPreAuthorizedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1541
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1542
    .local v0, "intent":Landroid/content/Intent;
    const-string v8, "text/x-vcard"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1543
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1545
    const-string v8, "useLookupUri"

    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1546
    const-string v8, "contactUri"

    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1548
    new-instance v8, Landroid/widget/ListPopupWindow;

    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    .line 1549
    new-instance v8, Lcom/android/contacts/list/SelectShareMenuAdapter;

    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const v10, 0x7f0401ef

    invoke-direct {v8, v9, v10}, Lcom/android/contacts/list/SelectShareMenuAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

    .line 1551
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1552
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v8, 0x10000

    invoke-virtual {v2, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1555
    .local v3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    new-instance v9, Lcom/android/contacts/detail/ContactLoaderFragment$5;

    invoke-direct {v9, p0, v3, v0}, Lcom/android/contacts/detail/ContactLoaderFragment$5;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;Ljava/util/List;Landroid/content/Intent;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1571
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

    invoke-virtual {v8, v3}, Lcom/android/contacts/list/SelectShareMenuAdapter;->setAppList(Ljava/util/List;)V

    .line 1572
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

    invoke-virtual {v8, v0}, Lcom/android/contacts/list/SelectShareMenuAdapter;->setShareIntent(Landroid/content/Intent;)V

    .line 1573
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

    invoke-virtual {v8, v7}, Lcom/android/contacts/list/SelectShareMenuAdapter;->setIsSelectionMode(Z)V

    .line 1574
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1576
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c01fd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1577
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1578
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSelectShareMenuAdapter:Lcom/android/contacts/list/SelectShareMenuAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1579
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 1580
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 1583
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c01ff

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 1584
    .local v4, "shareMenuHeight":I
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, v4}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 1585
    iget-object v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->show()V

    goto/16 :goto_0

    .line 1583
    .end local v4    # "shareMenuHeight":I
    :cond_3
    const/4 v4, -0x2

    goto :goto_1
.end method

.method public fetchdatabaseforContactMDNUpdate(Landroid/content/ContentResolver;J)V
    .locals 11
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "contactId"    # J

    .prologue
    .line 1609
    const-string v8, ""

    .line 1610
    .local v8, "rawcontactid":Ljava/lang/String;
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchdatabaseforContactMDNUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1616
    .local v7, "cLook":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 1617
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value of cursor cLook is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1620
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1621
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1622
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value of rawcontactid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    if-eqz v8, :cond_2

    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1624
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "data8"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1628
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1629
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value of cursor c is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1631
    const-string v0, "data8"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1632
    .local v10, "voltemdnIndex":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1633
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1634
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1635
    .local v9, "voltemdn":Ljava/lang/String;
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voltemdn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    if-eqz v9, :cond_0

    const-string v0, "false"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1638
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v1, "testing....2"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->contactMDN:Z

    .line 1645
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1641
    :cond_0
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v1, "testing....3"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->contactMDN:Z

    .line 1648
    .end local v9    # "voltemdn":Ljava/lang/String;
    .end local v10    # "voltemdnIndex":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1652
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1654
    :cond_3
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v1, "Just after fetch database completes for mdn number in ContactLoaderFragment class"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    return-void
.end method

.method public getLoadStreamItems()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1599
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    .local v1, "loaderObj":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    move-object v0, v1

    .line 1600
    check-cast v0, Lcom/android/contacts/ContactLoader;

    .line 1601
    .local v0, "loader":Lcom/android/contacts/ContactLoader;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader;->getLoadStreamItems()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public handleKeyDown(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 1303
    packed-switch p1, :pswitch_data_0

    .line 1309
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1305
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDeleteRequested(Landroid/net/Uri;)V

    .line 1306
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1303
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public hasContactPhoneNumber()Z
    .locals 17

    .prologue
    .line 937
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v15, :cond_1

    .line 938
    :cond_0
    const/4 v15, 0x0

    .line 977
    :goto_0
    return v15

    .line 941
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    .line 942
    .local v2, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->getBlackList()Ljava/util/ArrayList;

    move-result-object v4

    .line 944
    .local v4, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 945
    .local v13, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsBlackListContact:Z

    .line 947
    if-eqz v2, :cond_2

    if-nez v4, :cond_3

    .line 948
    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    .line 950
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity;

    .line 951
    .local v7, "entity":Landroid/content/Entity;
    invoke-virtual {v7}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v6

    .line 952
    .local v6, "entValues":Landroid/content/ContentValues;
    const-string v15, "account_type"

    invoke-virtual {v6, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, "accountType":Ljava/lang/String;
    const-string v15, "data_set"

    invoke-virtual {v6, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 955
    .local v5, "dataSet":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Entity$NamedContentValues;

    .line 956
    .local v14, "subValue":Landroid/content/Entity$NamedContentValues;
    iget-object v8, v14, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 957
    .local v8, "entryValues":Landroid/content/ContentValues;
    const-string v15, "mimetype"

    invoke-virtual {v8, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 958
    .local v12, "mimeType":Ljava/lang/String;
    invoke-virtual {v2, v1, v5, v12}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v11

    .line 961
    .local v11, "kind":Lcom/android/contacts/model/DataKind;
    const-string v15, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 962
    if-eqz v11, :cond_5

    iget-object v15, v11, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-eqz v15, :cond_5

    .line 964
    iget-object v15, v11, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v8}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 965
    .local v3, "actionBody":Ljava/lang/CharSequence;
    if-eqz v3, :cond_5

    .line 966
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 969
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsBlackListContact:Z

    goto :goto_1

    .line 977
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v3    # "actionBody":Ljava/lang/CharSequence;
    .end local v5    # "dataSet":Ljava/lang/String;
    .end local v6    # "entValues":Landroid/content/ContentValues;
    .end local v7    # "entity":Landroid/content/Entity;
    .end local v8    # "entryValues":Landroid/content/ContentValues;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v14    # "subValue":Landroid/content/Entity$NamedContentValues;
    :cond_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_7

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public isContactEditable()Z
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactOptionsChangeEnabled()Z
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactShareable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 909
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxContainerOnlyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 910
    .local v0, "isKioskPersonalMode":Z
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->areWritable()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->isBridgedContact()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    if-nez v0, :cond_2

    :goto_1
    return v1

    .end local v0    # "isKioskPersonalMode":Z
    :cond_1
    move v0, v2

    .line 909
    goto :goto_0

    .restart local v0    # "isKioskPersonalMode":Z
    :cond_2
    move v1, v2

    .line 910
    goto :goto_1
.end method

.method public isContactSim()Z
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactUserProfile()Z
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactWritable()Z
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->areWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsOptionsMenuChanged:Z

    return v0
.end method

.method public isSimAirplane()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 922
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactSim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 923
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 927
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 923
    goto :goto_0

    :cond_1
    move v0, v1

    .line 927
    goto :goto_0
.end method

.method public loadUri(Landroid/net/Uri;)V
    .locals 7
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 351
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {p1, v2}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    invoke-interface {v2, v6}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 360
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 363
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    .line 365
    sget-boolean v2, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 369
    :try_start_0
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/ContactsApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/contacts/detail/ContactLoaderFragment;->fetchdatabaseforContactMDNUpdate(Landroid/content/ContentResolver;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v2, :cond_6

    .line 378
    iput-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 379
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v2, :cond_4

    .line 380
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-interface {v2, v3}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V

    .line 382
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mFavoriteListener:Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

    if-eqz v2, :cond_5

    .line 383
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mFavoriteListener:Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-interface {v2, v3}, Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V

    .line 386
    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->setContactInfos()V

    goto :goto_0

    .line 372
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 387
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 388
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "contactUri"

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 390
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v5, v0, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 343
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 344
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 346
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 348
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1339
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 1350
    :goto_0
    return-void

    .line 1343
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1345
    :pswitch_0
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1346
    .local v0, "pickedUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    .line 1343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 288
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    .line 291
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 292
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V

    .line 294
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 295
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 251
    if-eqz p1, :cond_0

    .line 252
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    .line 253
    const-string v0, "optionsMenuEditable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    .line 254
    const-string v0, "optionsMenuShareable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    .line 255
    const-string v0, "sendToVoicemailState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 256
    const-string v0, "optionsMenuWritable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuWritable:Z

    .line 257
    const-string v0, "optionsMenuUserProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    .line 258
    const-string v0, "optionsMenuPhoneNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    .line 259
    const-string v0, "optionsMenuExceptSim"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    .line 260
    const-string v0, "optionsMenuExceptSimAirplane"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    .line 261
    const-string v0, "optionsMenuSeparate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuSeparate:Z

    .line 262
    const-string v0, "optionsMenuExceptEasymode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptEasyMode:Z

    .line 263
    const-string v0, "isBlackListContact"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsBlackListContact:Z

    .line 265
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 514
    const v0, 0x7f120024

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 515
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 328
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 336
    :goto_0
    const v0, 0x7f040055

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 331
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 299
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 300
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDialogCancelhandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDialogCancelhandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 321
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 322
    return-void
.end method

.method public onItemChosen(IILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "which"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 1405
    const/4 v0, 0x0

    .line 1407
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1439
    :goto_0
    return-void

    .line 1411
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1414
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1415
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "withSpecialChar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1416
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1421
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1422
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1423
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1424
    const-string v1, "list"

    const-string v2, "whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1425
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1429
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1430
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1431
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1432
    const-string v1, "list"

    const-string v2, "blacklist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemSelectorCancelled()V
    .locals 0

    .prologue
    .line 1444
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 982
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 1198
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    :cond_0
    :goto_1
    return v9

    .line 984
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->doEditAction()V

    goto :goto_0

    .line 988
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->doDeleteAction()V

    goto :goto_1

    .line 992
    :sswitch_2
    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v10, :cond_1

    move v9, v8

    goto :goto_1

    .line 993
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->doPickRingtone()V

    goto :goto_1

    .line 997
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0904f5

    invoke-virtual {v8, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/contacts/detail/ContactLoaderFragment;->doShareNameCardAction(Landroid/view/View;)Z

    move-result v9

    goto :goto_1

    .line 1001
    :sswitch_4
    iget-boolean v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    if-nez v10, :cond_2

    move v8, v9

    :cond_2
    iput-boolean v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 1002
    iget-boolean v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1003
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-static {v8, v10, v11}, Lcom/android/contacts/ContactSaveService;->createSetSendToVoicemail(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v3

    .line 1005
    .local v3, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 1009
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_5
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const-string v10, "0027"

    invoke-static {v8, v10}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1010
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v8, :cond_3

    .line 1011
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.android.app.contacts.action.SET_DEFAULT"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1012
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "contactUri"

    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1013
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1015
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v8, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v10, "contactUri is null"

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1021
    :sswitch_6
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const-string v10, "0026"

    invoke-static {v8, v10}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1022
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v8, :cond_5

    .line 1023
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1024
    .local v1, "contactId":J
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1025
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v3, v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1026
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    instance-of v8, v8, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v8, :cond_4

    .line 1028
    const-string v8, "intentFrom"

    const-string v10, "mainlist"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    :goto_2
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1030
    :cond_4
    const-string v8, "intentFrom"

    const-string v10, "detailview"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1034
    .end local v1    # "contactId":J
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    sget-object v8, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v10, "contactUri is null"

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1040
    :sswitch_7
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v8, :cond_6

    .line 1041
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.android.contacts.action.JOINED_CONTACT"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1043
    const-string v8, "UNLINK_ONLY"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1044
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/16 v10, 0x65

    invoke-virtual {v8, v3, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1047
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    sget-object v8, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v10, "contactUri is null"

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1054
    :sswitch_8
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v8, :cond_7

    .line 1055
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.android.app.contacts.action.HISTORY_LIST"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1056
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "contactUri"

    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1057
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1059
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_7
    sget-object v8, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v10, "contactUri is null"

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1065
    :sswitch_9
    const/4 v5, 0x0

    .line 1082
    .local v5, "mFeatureEnabled":Z
    goto/16 :goto_1

    .line 1087
    .end local v5    # "mFeatureEnabled":Z
    :sswitch_a
    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const-string v11, "0029"

    invoke-static {v10, v11}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1088
    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v10, :cond_0

    .line 1090
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1092
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/contacts/detail/ContactLoaderFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v6

    .line 1093
    .local v6, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->getInstance()Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

    move-result-object v8

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v8, v10, v6}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1095
    .end local v6    # "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "isBlackListContact"

    invoke-virtual {v10, v11, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1096
    .local v4, "isBlackListContact":Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v4, :cond_9

    move v8, v9

    :cond_9
    invoke-static {v10, v11, v8}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;

    goto/16 :goto_1

    .line 1103
    .end local v4    # "isBlackListContact":Z
    :sswitch_b
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v8, :cond_0

    .line 1104
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-direct {p0, v8, v9}, Lcom/android/contacts/detail/ContactLoaderFragment;->addToVipList(Landroid/net/Uri;Z)V

    goto/16 :goto_1

    .line 1109
    :sswitch_c
    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v10, :cond_0

    .line 1110
    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-direct {p0, v10, v8}, Lcom/android/contacts/detail/ContactLoaderFragment;->addToVipList(Landroid/net/Uri;Z)V

    goto/16 :goto_1

    .line 1116
    :sswitch_d
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v8, :cond_0

    .line 1117
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-direct {p0, v8}, Lcom/android/contacts/detail/ContactLoaderFragment;->copyToDialingScreen(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 1132
    :sswitch_e
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v8, :cond_0

    .line 1133
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1134
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "CONTACT_URI"

    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1135
    const-string v8, "mode"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1136
    const-string v8, "direct_launch"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1137
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1142
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_f
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v8, :cond_0

    .line 1143
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->createLauncherShortcutWithContact()V

    goto/16 :goto_1

    .line 1150
    :sswitch_10
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v8, :cond_0

    .line 1151
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v10, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-direct {v3, v8, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1152
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "contactUri"

    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1153
    const-string v8, "fromDetail"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1154
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1165
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v10, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v8, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1166
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    instance-of v8, v8, Lcom/android/contacts/activities/ContactDetailActivity;

    if-eqz v8, :cond_a

    .line 1167
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v8}, Lcom/android/contacts/activities/ContactDetailActivity;->getSvcUtils()Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v7

    .line 1168
    .local v7, "svcUtils":Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    if-eqz v7, :cond_0

    invoke-virtual {v7, p1}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->handleOptionMenuSelection(Landroid/view/MenuItem;)Z

    goto/16 :goto_1

    .line 1175
    .end local v7    # "svcUtils":Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    :cond_a
    :sswitch_12
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1176
    .restart local v1    # "contactId":J
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, "cnt_id":Ljava/lang/String;
    sget-object v8, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cnt_id is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1181
    sget-object v8, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v10, "Sending Subscribe for refresh option"

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v8

    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v8, v10, v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sendSubscribeForRefreshMenu(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1185
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const-string v10, ""

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e04fd

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v10, v11, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mRefreshDialog:Landroid/app/Dialog;

    .line 1188
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1190
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDialogCancelhandler:Landroid/os/Handler;

    const/16 v9, 0x64

    const-wide/16 v10, 0xfa0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1192
    :cond_b
    sget-object v8, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v9, "Sending Subscribe Failed Because EAB Not Ready"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 982
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0904e7 -> :sswitch_e
        0x7f0904f5 -> :sswitch_1
        0x7f09050c -> :sswitch_6
        0x7f090535 -> :sswitch_12
        0x7f090536 -> :sswitch_8
        0x7f090537 -> :sswitch_0
        0x7f090538 -> :sswitch_7
        0x7f090539 -> :sswitch_5
        0x7f09053a -> :sswitch_2
        0x7f09053b -> :sswitch_10
        0x7f09053c -> :sswitch_3
        0x7f09053d -> :sswitch_9
        0x7f09053e -> :sswitch_a
        0x7f09053f -> :sswitch_b
        0x7f090540 -> :sswitch_c
        0x7f090541 -> :sswitch_d
        0x7f090542 -> :sswitch_f
        0x7f090543 -> :sswitch_4
        0x7f090544 -> :sswitch_11
        0x7f090545 -> :sswitch_11
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 36
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 534
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v33

    move-object/from16 v0, v33

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    move/from16 v33, v0

    if-eqz v33, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v33

    check-cast v33, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual/range {v33 .. v33}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v33

    if-nez v33, :cond_0

    .line 537
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v31

    .line 538
    .local v31, "size":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, v31

    if-ge v13, v0, :cond_1

    .line 539
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v33

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 538
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 544
    .end local v13    # "i":I
    .end local v31    # "size":I
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 545
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2

    .line 546
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->simplifyTutorialMenu(Landroid/view/Menu;)V

    .line 874
    :cond_1
    :goto_1
    return-void

    .line 549
    :cond_2
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsOptionsMenuChanged:Z

    .line 550
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isFDNEnabled()Z

    move-result v14

    .line 551
    .local v14, "isFdnEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isSimAirplane()Z

    move-result v33

    if-nez v33, :cond_1f

    const/16 v33, 0x1

    :goto_2
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v33, v0

    if-eqz v33, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v33

    if-nez v33, :cond_20

    :cond_3
    const/16 v33, 0x1

    :goto_3
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptEasyMode:Z

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsUsingTwoPanes:Z

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsKNOXMode:Z

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v33, v0

    if-eqz v33, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/contacts/ContactLoader$Result;->isPrivateContact()Z

    move-result v33

    if-eqz v33, :cond_21

    const/16 v33, 0x1

    :goto_4
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsPrivateContact:Z

    .line 558
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v33

    if-eqz v33, :cond_22

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v33, v0

    if-eqz v33, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v33

    if-eqz v33, :cond_4

    .line 561
    const/4 v3, 0x1

    .line 562
    .local v3, "SIM_ONE":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v11

    .line 563
    .local v11, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity;>;"
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/Entity;

    invoke-virtual/range {v33 .. v33}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v33

    const-string v34, "account_type"

    invoke-virtual/range {v33 .. v34}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v20

    .line 572
    .local v20, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v33

    if-eqz v33, :cond_4

    .line 573
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    .line 585
    .end local v3    # "SIM_ONE":I
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v11    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v20    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_4
    :goto_5
    const v33, 0x7f090543

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    .line 586
    .local v23, "optionsSendToVoicemail":Landroid/view/MenuItem;
    if-eqz v23, :cond_5

    .line 587
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    move/from16 v33, v0

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 588
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    move/from16 v33, v0

    if-eqz v33, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptEasyMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_23

    const/16 v33, 0x1

    :goto_6
    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 590
    :cond_5
    const v33, 0x7f09053a

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    .line 591
    .local v22, "optionsRingtone":Landroid/view/MenuItem;
    if-eqz v22, :cond_6

    .line 594
    const/16 v33, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 598
    :cond_6
    const v33, 0x7f090536

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 599
    .local v12, "historyMenu":Landroid/view/MenuItem;
    if-eqz v12, :cond_7

    .line 600
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_25

    .line 603
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v33, v0

    if-eqz v33, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v33, v0

    if-nez v33, :cond_24

    const/16 v33, 0x1

    :goto_7
    move/from16 v0, v33

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 607
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_7

    invoke-interface {v12}, Landroid/view/MenuItem;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_7

    .line 608
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 609
    const v33, 0x7f0208a5

    move/from16 v0, v33

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 613
    :cond_7
    const v33, 0x7f090539

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    .line 614
    .local v21, "optionsDefault":Landroid/view/MenuItem;
    if-eqz v21, :cond_8

    .line 615
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v33, v0

    if-eqz v33, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v33, v0

    if-nez v33, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    move/from16 v33, v0

    if-eqz v33, :cond_27

    const/16 v33, 0x1

    :goto_9
    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 617
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_8

    invoke-interface/range {v21 .. v21}, Landroid/view/MenuItem;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_8

    .line 618
    const/16 v33, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 619
    const v33, 0x7f0208b1

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 623
    :cond_8
    const v33, 0x7f090537

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 625
    .local v10, "editMenu":Landroid/view/MenuItem;
    if-eqz v10, :cond_9

    .line 626
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v33, v0

    if-nez v33, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuWritable:Z

    move/from16 v33, v0

    if-nez v33, :cond_28

    .line 627
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 633
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_9

    invoke-interface {v10}, Landroid/view/MenuItem;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_9

    .line 634
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 635
    const v33, 0x7f020899

    move/from16 v0, v33

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 638
    :cond_9
    const v33, 0x7f0904f5

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 639
    .local v9, "deleteMenu":Landroid/view/MenuItem;
    if-eqz v9, :cond_a

    .line 640
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2b

    .line 643
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 653
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_a

    invoke-interface {v9}, Landroid/view/MenuItem;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_a

    .line 654
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 655
    const v33, 0x7f020894

    move/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 660
    :cond_a
    const v33, 0x7f09050c

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 661
    .local v18, "joinMenu":Landroid/view/MenuItem;
    if-eqz v18, :cond_b

    .line 662
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v33, v0

    if-eqz v33, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v33, v0

    if-nez v33, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    move/from16 v33, v0

    if-eqz v33, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptEasyMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_30

    const/16 v33, 0x1

    :goto_c
    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 664
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_b

    invoke-interface/range {v18 .. v18}, Landroid/view/MenuItem;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_b

    .line 665
    const/16 v33, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 666
    const v33, 0x7f0208aa

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 671
    :cond_b
    const v33, 0x7f090538

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    .line 672
    .local v29, "separateMenu":Landroid/view/MenuItem;
    if-eqz v29, :cond_c

    .line 673
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v33, v0

    if-eqz v33, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v33, v0

    if-nez v33, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    move/from16 v33, v0

    if-eqz v33, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuSeparate:Z

    move/from16 v33, v0

    if-eqz v33, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptEasyMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_31

    const/16 v33, 0x1

    :goto_d
    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 675
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_c

    invoke-interface/range {v29 .. v29}, Landroid/view/MenuItem;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_c

    .line 676
    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 677
    const v33, 0x7f0208ac

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 681
    :cond_c
    const v33, 0x7f09053c

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v30

    .line 682
    .local v30, "shareMenu":Landroid/view/MenuItem;
    if-eqz v30, :cond_e

    .line 684
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    move/from16 v33, v0

    if-eqz v33, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptEasyMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    if-eqz v33, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    move/from16 v33, v0

    if-nez v33, :cond_32

    :cond_d
    const/16 v33, 0x1

    :goto_e
    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 685
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_e

    invoke-interface/range {v30 .. v30}, Landroid/view/MenuItem;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_e

    .line 686
    const/16 v33, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 687
    const v33, 0x7f0208d5

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 692
    :cond_e
    const v33, 0x7f090542

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 693
    .local v5, "addToHomeMenu":Landroid/view/MenuItem;
    if-eqz v5, :cond_10

    .line 696
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxContainerOnlyMode(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_33

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_33

    const/4 v15, 0x1

    .line 698
    .local v15, "isKioskPersonalMode":Z
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    move/from16 v33, v0

    if-eqz v33, :cond_34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v33, v0

    if-nez v33, :cond_34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptEasyMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_34

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_34

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_34

    if-nez v15, :cond_34

    const/16 v33, 0x1

    :goto_10
    move/from16 v0, v33

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 703
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Contact_EnableBackupAssistance"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 705
    const v33, 0x7f0e0237

    move/from16 v0, v33

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 707
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_10

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_10

    .line 708
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 709
    const v33, 0x7f0208a7

    move/from16 v0, v33

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 714
    .end local v15    # "isKioskPersonalMode":Z
    :cond_10
    const v33, 0x7f09053b

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 715
    .local v6, "assignSpeeddialMenu":Landroid/view/MenuItem;
    if-eqz v6, :cond_13

    .line 716
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    move/from16 v33, v0

    if-eqz v33, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v33, v0

    if-nez v33, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptEasyMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_35

    const/16 v33, 0x1

    :goto_11
    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 719
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Contact_EnableAAB"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v33

    if-nez v33, :cond_12

    .line 721
    :cond_11
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 723
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_13

    invoke-interface {v6}, Landroid/view/MenuItem;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_13

    .line 724
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 725
    const v33, 0x7f0208da

    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 729
    :cond_13
    const/16 v19, 0x0

    .line 730
    .local v19, "mFeatureEnabled":Z
    const v33, 0x7f09053d

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    .line 731
    .local v24, "privatemenu":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSecretMode(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_14

    .line 737
    :cond_14
    if-eqz v24, :cond_15

    .line 738
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 742
    :cond_15
    const v33, 0x7f09053e

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    .line 743
    .local v26, "rejectMenu":Landroid/view/MenuItem;
    const-string v33, "feature_skt"

    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_36

    const/16 v16, 0x1

    .line 744
    .local v16, "isTPhoneMode":Z
    :goto_12
    if-eqz v26, :cond_16

    .line 745
    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 746
    .local v25, "rejectIntent":Landroid/content/Intent;
    const-string v33, "isBlackListContact"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsBlackListContact:Z

    move/from16 v34, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 747
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 750
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_37

    .line 752
    const v33, 0x7f0e03a6

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v33

    const v34, 0x7f0208d2

    invoke-interface/range {v33 .. v34}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 760
    :goto_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Contact_DisableMenuAddToRejectList"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_3a

    .line 762
    const/16 v33, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 770
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_16

    invoke-interface/range {v26 .. v26}, Landroid/view/MenuItem;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_16

    .line 771
    const/16 v33, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 772
    const v33, 0x7f0208d1

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 773
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_16

    .line 775
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsBlackListContact:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3e

    const v33, 0x7f0208c1

    :goto_15
    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 782
    .end local v25    # "rejectIntent":Landroid/content/Intent;
    :cond_16
    const v33, 0x7f09053f

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v32

    .line 783
    .local v32, "whiteListMenu":Landroid/view/MenuItem;
    if-eqz v32, :cond_17

    .line 784
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Common_EnableVIPMode"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_40

    .line 786
    const v33, 0x7f09053e

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v33

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 787
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v33, v0

    if-nez v33, :cond_3f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptEasyMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3f

    const/16 v33, 0x1

    :goto_16
    invoke-interface/range {v32 .. v33}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 791
    :goto_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_17

    invoke-interface/range {v32 .. v32}, Landroid/view/MenuItem;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_17

    .line 792
    const/16 v33, 0x0

    invoke-interface/range {v32 .. v33}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 793
    const v33, 0x7f020879

    invoke-interface/range {v32 .. v33}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 797
    :cond_17
    const v33, 0x7f090540

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 798
    .local v7, "blackListMenu":Landroid/view/MenuItem;
    if-eqz v7, :cond_18

    .line 799
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Common_EnableVIPMode"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_42

    .line 801
    const v33, 0x7f09053e

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v33

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 802
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    move/from16 v33, v0

    if-eqz v33, :cond_41

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v33, v0

    if-nez v33, :cond_41

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptEasyMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_41

    const/16 v33, 0x1

    :goto_18
    move/from16 v0, v33

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 806
    :goto_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_18

    invoke-interface {v7}, Landroid/view/MenuItem;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_18

    .line 807
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 808
    const v33, 0x7f020877

    move/from16 v0, v33

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 813
    :cond_18
    const v33, 0x7f090541

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 814
    .local v8, "copyToDialingMenu":Landroid/view/MenuItem;
    if-eqz v8, :cond_19

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    if-eqz v33, :cond_44

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Contact_EnableCopyToDialer"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_44

    .line 817
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    move/from16 v33, v0

    if-eqz v33, :cond_43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v33, v0

    if-nez v33, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_43

    const/16 v33, 0x1

    :goto_1a
    move/from16 v0, v33

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 821
    :goto_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_19

    invoke-interface {v8}, Landroid/view/MenuItem;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_19

    .line 822
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 823
    const v33, 0x7f020892

    move/from16 v0, v33

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 828
    :cond_19
    sget-object v33, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "######## Before hide refresh menu ###### contactMDN: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->contactMDN:Z

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const v33, 0x7f090535

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 830
    .local v17, "item":Landroid/view/MenuItem;
    if-eqz v17, :cond_1b

    .line 831
    sget-object v33, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v34, "######## menu item is not null ######"

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    sget-boolean v33, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v33, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->contactMDN:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1a

    .line 835
    sget-object v33, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v34, "######## going to enable refresh menu option ######"

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/16 v33, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 839
    :cond_1a
    sget-object v33, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v34, "######## After hide refresh menu ######"

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_1b
    const v33, 0x7f090543

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    .line 842
    .local v28, "sendVoiceMenu":Landroid/view/MenuItem;
    if-eqz v28, :cond_1c

    .line 843
    const/16 v33, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 860
    :cond_1c
    const v33, 0x7f0904e7

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    .line 861
    .local v27, "sendContactMenu":Landroid/view/MenuItem;
    if-eqz v27, :cond_1

    .line 862
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v33, v0

    if-nez v33, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptEasyMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsKNOXMode:Z

    move/from16 v33, v0

    if-nez v33, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_1d

    .line 865
    const/16 v33, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 867
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1e

    invoke-interface/range {v27 .. v27}, Landroid/view/MenuItem;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_1e

    .line 868
    const/16 v33, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 870
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_1

    .line 871
    const/16 v33, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 551
    .end local v5    # "addToHomeMenu":Landroid/view/MenuItem;
    .end local v6    # "assignSpeeddialMenu":Landroid/view/MenuItem;
    .end local v7    # "blackListMenu":Landroid/view/MenuItem;
    .end local v8    # "copyToDialingMenu":Landroid/view/MenuItem;
    .end local v9    # "deleteMenu":Landroid/view/MenuItem;
    .end local v10    # "editMenu":Landroid/view/MenuItem;
    .end local v12    # "historyMenu":Landroid/view/MenuItem;
    .end local v16    # "isTPhoneMode":Z
    .end local v17    # "item":Landroid/view/MenuItem;
    .end local v18    # "joinMenu":Landroid/view/MenuItem;
    .end local v19    # "mFeatureEnabled":Z
    .end local v21    # "optionsDefault":Landroid/view/MenuItem;
    .end local v22    # "optionsRingtone":Landroid/view/MenuItem;
    .end local v23    # "optionsSendToVoicemail":Landroid/view/MenuItem;
    .end local v24    # "privatemenu":Landroid/view/MenuItem;
    .end local v26    # "rejectMenu":Landroid/view/MenuItem;
    .end local v27    # "sendContactMenu":Landroid/view/MenuItem;
    .end local v28    # "sendVoiceMenu":Landroid/view/MenuItem;
    .end local v29    # "separateMenu":Landroid/view/MenuItem;
    .end local v30    # "shareMenu":Landroid/view/MenuItem;
    .end local v32    # "whiteListMenu":Landroid/view/MenuItem;
    :cond_1f
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 552
    :cond_20
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 555
    :cond_21
    const/16 v33, 0x0

    goto/16 :goto_4

    .line 577
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v33, v0

    if-eqz v33, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v33

    if-eqz v33, :cond_4

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v20

    .line 579
    .restart local v20    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    goto/16 :goto_5

    .line 588
    .end local v20    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .restart local v23    # "optionsSendToVoicemail":Landroid/view/MenuItem;
    :cond_23
    const/16 v33, 0x0

    goto/16 :goto_6

    .line 603
    .restart local v12    # "historyMenu":Landroid/view/MenuItem;
    .restart local v22    # "optionsRingtone":Landroid/view/MenuItem;
    :cond_24
    const/16 v33, 0x0

    goto/16 :goto_7

    .line 605
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v33, v0

    if-eqz v33, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v33, v0

    if-nez v33, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    move/from16 v33, v0

    if-eqz v33, :cond_26

    const/16 v33, 0x1

    :goto_1c
    move/from16 v0, v33

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_8

    :cond_26
    const/16 v33, 0x0

    goto :goto_1c

    .line 615
    .restart local v21    # "optionsDefault":Landroid/view/MenuItem;
    :cond_27
    const/16 v33, 0x0

    goto/16 :goto_9

    .line 628
    .restart local v10    # "editMenu":Landroid/view/MenuItem;
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    move/from16 v33, v0

    if-nez v33, :cond_29

    if-eqz v14, :cond_29

    .line 629
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    .line 631
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2a

    const/16 v33, 0x1

    :goto_1d
    move/from16 v0, v33

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    :cond_2a
    const/16 v33, 0x0

    goto :goto_1d

    .line 644
    .restart local v9    # "deleteMenu":Landroid/view/MenuItem;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/contacts/ContactLoader$Result;->isPhoneReadOnly()Z

    move-result v33

    if-eqz v33, :cond_2c

    .line 645
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 646
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    move/from16 v33, v0

    if-nez v33, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuWritable:Z

    move/from16 v33, v0

    if-nez v33, :cond_2d

    .line 647
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 648
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    move/from16 v33, v0

    if-nez v33, :cond_2e

    if-eqz v14, :cond_2e

    .line 649
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 651
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2f

    const/16 v33, 0x1

    :goto_1e
    move/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    :cond_2f
    const/16 v33, 0x0

    goto :goto_1e

    .line 662
    .restart local v18    # "joinMenu":Landroid/view/MenuItem;
    :cond_30
    const/16 v33, 0x0

    goto/16 :goto_c

    .line 673
    .restart local v29    # "separateMenu":Landroid/view/MenuItem;
    :cond_31
    const/16 v33, 0x0

    goto/16 :goto_d

    .line 684
    .restart local v30    # "shareMenu":Landroid/view/MenuItem;
    :cond_32
    const/16 v33, 0x0

    goto/16 :goto_e

    .line 696
    .restart local v5    # "addToHomeMenu":Landroid/view/MenuItem;
    :cond_33
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 698
    .restart local v15    # "isKioskPersonalMode":Z
    :cond_34
    const/16 v33, 0x0

    goto/16 :goto_10

    .line 716
    .end local v15    # "isKioskPersonalMode":Z
    .restart local v6    # "assignSpeeddialMenu":Landroid/view/MenuItem;
    :cond_35
    const/16 v33, 0x0

    goto/16 :goto_11

    .line 743
    .restart local v19    # "mFeatureEnabled":Z
    .restart local v24    # "privatemenu":Landroid/view/MenuItem;
    .restart local v26    # "rejectMenu":Landroid/view/MenuItem;
    :cond_36
    const/16 v16, 0x0

    goto/16 :goto_12

    .line 755
    .restart local v16    # "isTPhoneMode":Z
    .restart local v25    # "rejectIntent":Landroid/content/Intent;
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsBlackListContact:Z

    move/from16 v33, v0

    if-eqz v33, :cond_38

    const v33, 0x7f0e029f

    :goto_1f
    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsBlackListContact:Z

    move/from16 v33, v0

    if-eqz v33, :cond_39

    const v33, 0x7f0208c2

    :goto_20
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_13

    :cond_38
    const v33, 0x7f0e029e

    goto :goto_1f

    :cond_39
    const v33, 0x7f02087f

    goto :goto_20

    .line 763
    :cond_3a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_3c

    .line 765
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v33, v0

    if-nez v33, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptEasyMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3b

    if-nez v16, :cond_3b

    const/16 v33, 0x1

    :goto_21
    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_14

    :cond_3b
    const/16 v33, 0x0

    goto :goto_21

    .line 767
    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    move/from16 v33, v0

    if-nez v33, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptEasyMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3d

    if-nez v16, :cond_3d

    const/16 v33, 0x1

    :goto_22
    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_14

    :cond_3d
    const/16 v33, 0x0

    goto :goto_22

    .line 775
    :cond_3e
    const v33, 0x7f02087e

    goto/16 :goto_15

    .line 787
    .end local v25    # "rejectIntent":Landroid/content/Intent;
    .restart local v32    # "whiteListMenu":Landroid/view/MenuItem;
    :cond_3f
    const/16 v33, 0x0

    goto/16 :goto_16

    .line 789
    :cond_40
    const/16 v33, 0x0

    invoke-interface/range {v32 .. v33}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_17

    .line 802
    .restart local v7    # "blackListMenu":Landroid/view/MenuItem;
    :cond_41
    const/16 v33, 0x0

    goto/16 :goto_18

    .line 804
    :cond_42
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_19

    .line 817
    .restart local v8    # "copyToDialingMenu":Landroid/view/MenuItem;
    :cond_43
    const/16 v33, 0x0

    goto/16 :goto_1a

    .line 819
    :cond_44
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1b
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 270
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 271
    const-string v0, "optionsMenuOptions"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    const-string v0, "optionsMenuEditable"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    const-string v0, "optionsMenuShareable"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    const-string v0, "sendToVoicemailState"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    const-string v0, "optionsMenuWritable"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuWritable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    const-string v0, "optionsMenuUserProfile"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 277
    const-string v0, "optionsMenuPhoneNumber"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    const-string v0, "optionsMenuExceptSim"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 279
    const-string v0, "optionsMenuExceptSimAirplane"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    const-string v0, "optionsMenuExceptEasymode"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptEasyMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    const-string v0, "optionsMenuSeparate"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuSeparate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    const-string v0, "isBlackListContact"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mIsBlackListContact:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    return-void
.end method

.method public reLoadUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 395
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 399
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    .line 400
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_4

    .line 401
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 402
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-interface {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mFavoriteListener:Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

    if-eqz v1, :cond_2

    .line 406
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mFavoriteListener:Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-interface {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V

    .line 409
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->setContactInfos()V

    .line 415
    :cond_3
    :goto_0
    return-void

    .line 410
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 411
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 412
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 413
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public setFavoriteDetailListener(Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mFavoriteListener:Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

    .line 423
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    .line 419
    return-void
.end method

.method public setSpeedDialTutorialMode(Z)V
    .locals 0
    .param p1, "isSpeedDialTutorialMode"    # Z

    .prologue
    .line 1605
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSpeedDialTutorialMode:Z

    .line 1606
    return-void
.end method

.method public toggleLoadStreamItems()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1592
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    .local v1, "loaderObj":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    move-object v0, v1

    .line 1593
    check-cast v0, Lcom/android/contacts/ContactLoader;

    .line 1594
    .local v0, "loader":Lcom/android/contacts/ContactLoader;
    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader;->getLoadStreamItems()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/contacts/ContactLoader;->setLoadStreamItems(Z)V

    .line 1595
    return-void

    .line 1594
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
