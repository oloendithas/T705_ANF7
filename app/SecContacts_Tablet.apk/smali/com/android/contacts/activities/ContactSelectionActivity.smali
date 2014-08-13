.class public Lcom/android/contacts/activities/ContactSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactSelectionActivity$1;,
        Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIRECTORY_RESULT_LIMIT:I = 0x14

.field private static final KEY_ACTION_CODE:Ljava/lang/String; = "actionCode"

.field private static final KEY_EMAIL_MODE:Ljava/lang/String; = "emailmode"

.field private static final KEY_PHOTO_MODE:Ljava/lang/String; = "photomode"

.field private static final KEY_RINGTONE_MODE:Ljava/lang/String; = "ringtonemode"

.field private static final PHOTO:Ljava/lang/String; = "photo"

.field private static final PHOTO_FOR_INTENT:Ljava/lang/String; = "photo_uri"

.field private static final REQUEST_CODE_CREATE_AND_PICK:I = 0x2

.field private static final REQUEST_CODE_PICK_VCARD:I = 0x1

.field private static final RINGTONE_FOR_INTENT:Ljava/lang/String; = "ringtone_uri"

.field private static final SUBACTIVITY_ADD_TO_EXISTING_CONTACT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactSelectionActivity"


# instance fields
.field private mActionCode:I

.field public mAttachPhotoMode:Z

.field public mEmailMode:Z

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field protected mInteractionLayout:Landroid/view/View;

.field private mIsMultiWindowSupported:Z

.field private mIsRecreatedInstance:Z

.field private mIsTablet:Z

.field private mIsTutorialMode:Z

.field protected mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMenuCreateContact:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mNormalContactOnly:Z

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field public mRingtoneMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mNormalContactOnly:Z

    .line 134
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 135
    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ContactSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsTutorialMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/ContactSelectionActivity;)Lcom/android/contacts/list/ContactsRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    return-object v0
.end method

.method private actionbarTitle()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f0e0028

    .line 404
    const/4 v1, 0x0

    .line 406
    .local v1, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 407
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "title":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "title":Ljava/lang/String;
    move-object v2, v1

    .line 469
    .end local v1    # "title":Ljava/lang/String;
    .local v2, "title":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 411
    .end local v2    # "title":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 412
    .local v0, "actionCode":I
    sparse-switch v0, :sswitch_data_0

    .line 467
    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v2, v1

    .line 469
    .end local v1    # "title":Ljava/lang/String;
    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    .line 414
    .end local v2    # "title":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 415
    goto :goto_1

    .line 419
    :sswitch_1
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    goto :goto_1

    .line 424
    :sswitch_2
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 425
    goto :goto_1

    .line 429
    :sswitch_3
    const v3, 0x7f0e0025

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 430
    goto :goto_1

    .line 434
    :sswitch_4
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 435
    goto :goto_1

    .line 439
    :sswitch_5
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    goto :goto_1

    .line 444
    :sswitch_6
    const v3, 0x7f0e0026

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 445
    goto :goto_1

    .line 449
    :sswitch_7
    const v3, 0x7f0e0027

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 450
    goto :goto_1

    .line 454
    :sswitch_8
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 455
    goto :goto_1

    .line 460
    :sswitch_9
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 462
    goto :goto_1

    .line 412
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_9
        0x3c -> :sswitch_1
        0x46 -> :sswitch_2
        0x50 -> :sswitch_0
        0x5a -> :sswitch_4
        0x64 -> :sswitch_8
        0x69 -> :sswitch_5
        0x6e -> :sswitch_3
        0x78 -> :sswitch_6
        0x82 -> :sswitch_7
    .end sparse-switch
.end method

.method private finishWithHidingIME()V
    .locals 3

    .prologue
    .line 865
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 866
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 867
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 868
    return-void
.end method

.method private isCreateContactVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 871
    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    const/16 v2, 0x46

    if-ne v1, v2, :cond_1

    .line 872
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getHideCreateLabel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 878
    :cond_1
    :goto_0
    return v0

    .line 875
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setActivityFinishAnimation()V
    .locals 2

    .prologue
    .line 888
    const/4 v0, -0x1

    const v1, 0x10a0003

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->overridePendingTransition(II)V

    .line 889
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 477
    iget v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    iget-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 628
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 482
    iget v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    sparse-switch v2, :sswitch_data_0

    .line 616
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid action code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 484
    :sswitch_0
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 485
    .local v0, "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsTablet:Z

    if-eqz v2, :cond_1

    .line 486
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->setCreateContactEnabled(Z)V

    .line 489
    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->setEditMode(Z)V

    .line 490
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRingtoneMode:Z

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setRingToneMode(Z)V

    .line 491
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mAttachPhotoMode:Z

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setAttachPhotoMode(Z)V

    .line 492
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->setDirectorySearchMode(I)V

    .line 493
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mEmailMode:Z

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setEmailMode(Z)V

    .line 495
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsTutorialMode:Z

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setTutorialMode(Z)V

    .line 496
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 619
    .end local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    :goto_2
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    .line 620
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 621
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 622
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 623
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    .line 625
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f090196

    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    .line 488
    .restart local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getHideCreateLabel()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setCreateContactEnabled(Z)V

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_3

    .line 501
    .end local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_1
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 502
    .restart local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setSearchMode(Z)V

    .line 503
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->shouldIncludeProfile()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setIncludeProfile(Z)V

    .line 505
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v2

    const/16 v5, 0x19

    if-ne v2, v5, :cond_3

    .line 506
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->setOnlyPhoneNumberProjection(Z)V

    .line 513
    :goto_4
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_2

    .line 508
    :cond_3
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->setOnlyPhoneNumberProjection(Z)V

    goto :goto_4

    .line 518
    .end local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_2
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 519
    .restart local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->shouldIncludeProfile()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setIncludeProfile(Z)V

    .line 520
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsTablet:Z

    if-eqz v2, :cond_5

    .line 521
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->setCreateContactEnabled(Z)V

    .line 524
    :goto_5
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRingtoneMode:Z

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setRingToneMode(Z)V

    .line 525
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mAttachPhotoMode:Z

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setAttachPhotoMode(Z)V

    .line 527
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v2

    const/16 v5, 0x18

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v2

    const/16 v5, 0x1a

    if-ne v2, v5, :cond_7

    .line 529
    :cond_4
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->setFinishActivityonCreateComplete(Z)V

    .line 534
    :goto_6
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    .line 523
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_7
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setCreateContactEnabled(Z)V

    goto :goto_5

    :cond_6
    move v2, v4

    goto :goto_7

    .line 532
    :cond_7
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->setFinishActivityonCreateComplete(Z)V

    goto :goto_6

    .line 539
    .end local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_3
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 540
    .restart local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setSearchMode(Z)V

    .line 541
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/android/contacts/list/ContactPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 542
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->setShortcutRequested(Z)V

    .line 547
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    .line 552
    .end local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_4
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 553
    .restart local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setSearchMode(Z)V

    .line 554
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/android/contacts/list/ContactPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 555
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->showNormalContactOnly(Z)V

    .line 556
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->showSecretContactOnly(Z)V

    .line 557
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    .line 562
    .end local v0    # "fragment":Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_5
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 563
    .local v0, "fragment":Lcom/android/contacts/list/PhoneNumberPickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    .line 568
    .end local v0    # "fragment":Lcom/android/contacts/list/PhoneNumberPickerFragment;
    :sswitch_6
    new-instance v2, Lcom/android/contacts/list/EmailAddressPickerFragment;

    invoke-direct {v2}, Lcom/android/contacts/list/EmailAddressPickerFragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    .line 573
    :sswitch_7
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 574
    .restart local v0    # "fragment":Lcom/android/contacts/list/PhoneNumberPickerFragment;
    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    .line 575
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSearchMode(Z)V

    .line 580
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    .line 585
    .end local v0    # "fragment":Lcom/android/contacts/list/PhoneNumberPickerFragment;
    :sswitch_8
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 586
    .restart local v0    # "fragment":Lcom/android/contacts/list/PhoneNumberPickerFragment;
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    .line 591
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    .line 596
    .end local v0    # "fragment":Lcom/android/contacts/list/PhoneNumberPickerFragment;
    :sswitch_9
    new-instance v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;-><init>()V

    .line 597
    .local v0, "fragment":Lcom/android/contacts/list/PostalAddressPickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_2

    .line 603
    .end local v0    # "fragment":Lcom/android/contacts/list/PostalAddressPickerFragment;
    :sswitch_a
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 604
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    invoke-virtual {p0, v1, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 610
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto/16 :goto_0

    .line 482
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_a
        0x3c -> :sswitch_1
        0x46 -> :sswitch_2
        0x50 -> :sswitch_0
        0x5a -> :sswitch_5
        0x64 -> :sswitch_9
        0x69 -> :sswitch_6
        0x6e -> :sswitch_3
        0x6f -> :sswitch_4
        0x78 -> :sswitch_7
        0x82 -> :sswitch_8
    .end sparse-switch
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 883
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->finish()V

    .line 884
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setActivityFinishAnimation()V

    .line 885
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 832
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 833
    if-nez p1, :cond_2

    .line 834
    if-ne p2, v2, :cond_1

    .line 835
    if-eqz p3, :cond_0

    .line 836
    invoke-virtual {p0, p3}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 838
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 862
    :cond_1
    :goto_0
    return-void

    .line 841
    :cond_2
    if-ne p1, v4, :cond_4

    .line 843
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 844
    if-eqz p3, :cond_3

    .line 845
    invoke-virtual {p0, v2, p3}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 848
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto :goto_0

    .line 847
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    goto :goto_1

    .line 851
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 852
    if-eqz p3, :cond_5

    .line 853
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 854
    .local v0, "result":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 855
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 856
    invoke-virtual {p0, v2, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 860
    .end local v0    # "result":Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto :goto_0

    .line 859
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    goto :goto_2
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 139
    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    .line 140
    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 141
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setupActionListener()V

    .line 143
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 799
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;

    move-result-object v0

    .line 800
    .local v0, "menuAdapter":Lcom/android/contacts/widget/ContextMenuAdapter;
    if-eqz v0, :cond_0

    .line 801
    invoke-interface {v0, p1}, Lcom/android/contacts/widget/ContextMenuAdapter;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 804
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x1c

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 147
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsMultiWindowSupported:Z

    .line 150
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsTablet:Z

    .line 153
    iget-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsMultiWindowSupported:Z

    if-eqz v5, :cond_0

    .line 154
    new-instance v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v5, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 156
    :cond_0
    iget-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsTablet:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v5

    if-nez v5, :cond_2

    .line 157
    :cond_1
    const v5, 0x7f110036

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTheme(I)V

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "tutorial_mode_from_dialer"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsTutorialMode:Z

    .line 163
    iget-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 164
    iget-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v5

    if-nez v5, :cond_3

    .line 165
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 245
    :goto_0
    return-void

    .line 170
    :cond_3
    if-eqz p1, :cond_5

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsRecreatedInstance:Z

    .line 171
    iget-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsRecreatedInstance:Z

    if-eqz v5, :cond_6

    .line 172
    const-string v5, "actionCode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 173
    const-string v5, "photomode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mAttachPhotoMode:Z

    .line 174
    const-string v5, "ringtonemode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRingtoneMode:Z

    .line 175
    const-string v5, "emailmode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mEmailMode:Z

    .line 176
    const-string v5, "tutorial_mode_from_dialer"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsTutorialMode:Z

    .line 198
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v4

    .line 199
    .local v4, "redirect":Landroid/content/Intent;
    if-eqz v4, :cond_b

    .line 201
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto :goto_0

    .end local v4    # "redirect":Landroid/content/Intent;
    :cond_5
    move v5, v7

    .line 170
    goto :goto_1

    .line 181
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 182
    .local v3, "mIntent":Landroid/content/Intent;
    if-eqz v3, :cond_4

    .line 183
    const-string v5, "photo"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "photo_uri"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_7
    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mAttachPhotoMode:Z

    .line 184
    const-string v5, "ringtone_uri"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRingtoneMode:Z

    .line 185
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 186
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_a

    .line 187
    const-string v5, "email"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v7, v6

    :cond_8
    iput-boolean v7, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mEmailMode:Z

    goto :goto_2

    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_9
    move v5, v7

    .line 183
    goto :goto_3

    .line 189
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_a
    iput-boolean v7, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mEmailMode:Z

    goto :goto_2

    .line 208
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "mIntent":Landroid/content/Intent;
    .restart local v4    # "redirect":Landroid/content/Intent;
    :cond_b
    const v5, 0x7f04006f

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactSelectionActivity;->setContentView(I)V

    .line 210
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 211
    const v5, 0x7f0901a2

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mInteractionLayout:Landroid/view/View;

    .line 212
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setLayoutAttribute()V

    .line 215
    :cond_c
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 216
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_d

    .line 218
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->actionbarTitle()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "actionbartitle":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    const v5, 0x7f02077d

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setIcon(I)V

    .line 224
    iget-object v5, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 225
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 234
    .end local v1    # "actionbartitle":Ljava/lang/String;
    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v7, 0x400

    invoke-virtual {v5, v7}, Landroid/view/Window;->addFlags(I)V

    .line 235
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v7, 0x800000

    invoke-virtual {v5, v7}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 236
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v7, 0x2000

    invoke-virtual {v5, v7}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 237
    invoke-virtual {p0, v6}, Lcom/android/contacts/activities/ContactSelectionActivity;->setFinishOnTouchOutside(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureListFragment()V

    goto/16 :goto_0

    .line 227
    .restart local v1    # "actionbartitle":Ljava/lang/String;
    :cond_e
    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 251
    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsTablet:Z

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 253
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 254
    const v1, 0x7f0904f4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mMenuCreateContact:Landroid/view/MenuItem;

    .line 262
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 259
    .restart local v0    # "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 260
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 276
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 288
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 279
    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finishWithHidingIME()V

    .line 280
    const/4 v0, 0x1

    goto :goto_1

    .line 282
    :sswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/ContactPickerFragment;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactPickerFragment;->createNewContact()V

    goto :goto_0

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904f4 -> :sswitch_1
        0x7f0904f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 267
    const-string v0, "ContactSelectionActivity"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mMenuCreateContact:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->isCreateContactVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 271
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 334
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 335
    const-string v0, "actionCode"

    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    const-string v0, "photomode"

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mAttachPhotoMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 337
    const-string v0, "ringtonemode"

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRingtoneMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 338
    const-string v0, "emailmode"

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mEmailMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    const-string v0, "tutorial_mode_from_dialer"

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsTutorialMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 343
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setLayoutAttribute()V

    .line 296
    :cond_0
    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 815
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 816
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 817
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 818
    return-void
.end method

.method public returnPickerResult(Landroid/net/Uri;)V
    .locals 1
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 809
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 810
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 811
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 812
    return-void
.end method

.method protected setLayoutAttribute()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 299
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 300
    .local v4, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c020a

    invoke-virtual {v6, v7, v4, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 301
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 302
    .local v0, "dimAmount":F
    iget-object v6, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 304
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 305
    iget-object v6, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 307
    iget-object v6, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/Window;->setDimAmount(F)V

    .line 330
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v9, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 313
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 314
    .local v2, "param":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 315
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const-string v6, "window"

    invoke-virtual {p0, v6}, Lcom/android/contacts/activities/ContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 316
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 317
    const/16 v6, 0x51

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 318
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 319
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 328
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "wm":Landroid/view/WindowManager;
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x7f020988

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 321
    .end local v2    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 322
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 323
    .restart local v2    # "param":Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x35

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 324
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c01d2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 326
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 631
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/ContactPickerFragment;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/ContactPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    .line 646
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V

    goto :goto_0

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setOnPostalAddressPickerActionListener(Lcom/android/contacts/list/OnPostalAddressPickerActionListener;)V

    goto :goto_0

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/EmailAddressPickerFragment;

    if-eqz v0, :cond_3

    .line 641
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/EmailAddressPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setOnEmailAddressPickerActionListener(Lcom/android/contacts/list/OnEmailAddressPickerActionListener;)V

    goto :goto_0

    .line 644
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityAndForwardResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 786
    const/high16 v1, 0x2000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 789
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 790
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 793
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 794
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finishWithHidingIME()V

    .line 795
    return-void
.end method
