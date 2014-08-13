.class final Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "JoinedContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/JoinedContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LinkedContactsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mUnknownAccountText:Ljava/lang/CharSequence;

.field mUnknownNameText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    .line 234
    const v0, 0x7f040180

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 236
    const v0, 0x104000e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 237
    const v0, 0x104000f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mUnknownAccountText:Ljava/lang/CharSequence;

    .line 238
    iput-object p2, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSupportHoveringUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Lcom/sec/android/app/contacts/ListHoverManager;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/ListHoverManager;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static {p1, v0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->access$202(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Lcom/sec/android/app/contacts/ListHoverManager;)Lcom/sec/android/app/contacts/ListHoverManager;

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;

    .line 276
    .local v1, "cache":Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;
    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "accountType":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 279
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v0, v9}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v7

    .line 280
    .local v7, "type":Lcom/android/contacts/model/AccountType;
    const-string v8, "vnd.sec.contact.phone_personal"

    iget-object v9, v7, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 281
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 282
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0e0130

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .end local v7    # "type":Lcom/android/contacts/model/AccountType;
    :cond_0
    :goto_0
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 300
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->nameView:Landroid/widget/TextView;

    if-eqz v8, :cond_1

    .line 301
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->nameView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_1
    :goto_1
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 309
    .local v5, "rawContactId":J
    const/4 v4, 0x0

    .line 311
    .local v4, "photo":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v5, v6, v9}, Lcom/android/contacts/ContactsUtils;->loadContactPhotoWithRawContactId(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 319
    :goto_2
    if-nez v4, :cond_9

    .line 320
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->photoView:Landroid/widget/ImageView;

    const v9, 0x7f0203a7

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    :goto_3
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 326
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 327
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->mJoinedContactItem:Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 328
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 329
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 337
    :goto_4
    iput-wide v5, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->targetRawContactId:J

    .line 338
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    iget-wide v9, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->targetRawContactId:J

    invoke-static {v8, v9, v10}, Lcom/android/contacts/ContactsUtils;->loadProfileIntentWithRawContactId(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v8

    iput-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->profileIntent:Landroid/content/Intent;

    .line 340
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->mJoinedContactItem:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$1;

    invoke-direct {v9, p0, v1}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$1;-><init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/FrameLayout;

    new-instance v9, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$2;

    invoke-direct {v9, p0, v1}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$2;-><init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    # getter for: Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static {v8}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->access$200(Lcom/sec/android/app/contacts/list/JoinedContactFragment;)Lcom/sec/android/app/contacts/ListHoverManager;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 357
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->nameView:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->nameView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 358
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    # getter for: Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static {v8}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->access$200(Lcom/sec/android/app/contacts/list/JoinedContactFragment;)Lcom/sec/android/app/contacts/ListHoverManager;

    move-result-object v8

    const v9, 0x7f090204

    const v10, 0x7f09010a

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/contacts/ListHoverManager;->setTextViewId(II)V

    .line 359
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    # getter for: Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static {v8}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->access$200(Lcom/sec/android/app/contacts/list/JoinedContactFragment;)Lcom/sec/android/app/contacts/ListHoverManager;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->mJoinedContactItem:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/ListHoverManager;->setHoverPopup(Landroid/view/View;)V

    .line 362
    :cond_4
    return-void

    .line 283
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "photo":Landroid/graphics/Bitmap;
    .end local v5    # "rawContactId":J
    .restart local v7    # "type":Lcom/android/contacts/model/AccountType;
    :cond_5
    const-string v8, "vnd.sec.contact.phone_knox"

    iget-object v9, v7, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 284
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 285
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0e0131

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 287
    :cond_6
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 288
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 291
    .end local v7    # "type":Lcom/android/contacts/model/AccountType;
    :cond_7
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 292
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mUnknownAccountText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 303
    .restart local v3    # "name":Ljava/lang/String;
    :cond_8
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->nameView:Landroid/widget/TextView;

    if-eqz v8, :cond_1

    .line 304
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->nameView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 314
    .restart local v4    # "photo":Landroid/graphics/Bitmap;
    .restart local v5    # "rawContactId":J
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 322
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :cond_9
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->photoView:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 331
    :cond_a
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonView:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 332
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->mJoinedContactItem:Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 333
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/FrameLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 334
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/FrameLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 382
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 383
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t move cursor to position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 387
    :cond_0
    if-nez p2, :cond_1

    .line 388
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, p3}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 392
    .local v1, "v":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 393
    return-object v1

    .line 390
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    move-object v1, p2

    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 261
    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 268
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 366
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 368
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;-><init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;)V

    .line 369
    .local v0, "cache":Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;
    const v2, 0x7f09036f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->mJoinedContactItem:Landroid/widget/LinearLayout;

    .line 370
    const v2, 0x7f090204

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    .line 371
    const v2, 0x7f09010a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->nameView:Landroid/widget/TextView;

    .line 372
    const v2, 0x7f090371

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->photoView:Landroid/widget/ImageView;

    .line 373
    const v2, 0x7f090370

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/FrameLayout;

    .line 374
    const v2, 0x7f090374

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonView:Landroid/widget/ImageView;

    .line 375
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 376
    return-object v1
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    .line 398
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {v2}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getTextFilter()Ljava/lang/CharSequence;

    move-result-object v0

    .line 399
    .local v0, "constraint":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 401
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 402
    .local v1, "filter":Landroid/widget/Filter;
    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 407
    .end local v1    # "filter":Landroid/widget/Filter;
    :cond_0
    return-void
.end method
