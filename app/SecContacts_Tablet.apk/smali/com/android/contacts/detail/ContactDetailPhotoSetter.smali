.class public Lcom/android/contacts/detail/ContactDetailPhotoSetter;
.super Lcom/android/contacts/util/ImageViewDrawableSetter;
.source "ContactDetailPhotoSetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;,
        Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;
    }
.end annotation


# instance fields
.field private mPhotoActionPopUp:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;-><init>()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailPhotoSetter;Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;ZLandroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailPhotoSetter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Landroid/graphics/Bitmap;

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->showPhotoActionPopup(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method private setupClickListener(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/graphics/Bitmap;ZLcom/android/contacts/editor/PhotoActionPopup$Listener;)Landroid/view/View$OnClickListener;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactData"    # Lcom/android/contacts/ContactLoader$Result;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "expandPhotoOnClick"    # Z
    .param p5, "listener"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->getTarget()Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    move-result-object v8

    .line 148
    .local v8, "target":Lcom/sec/android/app/contacts/widget/AnimatableImageView;
    if-nez v8, :cond_0

    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;

    invoke-virtual {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->getCompressedImage()[B

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;-><init>(Lcom/android/contacts/detail/ContactDetailPhotoSetter;Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/graphics/Bitmap;[BZLcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    goto :goto_0
.end method

.method private showPhotoActionPopup(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;ZLandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoView"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;
    .param p4, "isnamecard"    # Z
    .param p5, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 160
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 161
    check-cast v0, Landroid/app/Activity;

    .line 162
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    if-eqz p5, :cond_2

    .line 167
    invoke-static {p1, p2, p5, p4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->createZoomInPhotoPopup(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;Z)Landroid/widget/PopupWindow;

    goto :goto_0

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    :cond_3
    if-nez p4, :cond_4

    .line 170
    const/4 v1, 0x4

    invoke-static {p1, p2, p3, v1}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    .line 172
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Lcom/sec/android/app/contacts/widget/AnimatableImageView;ZLcom/android/contacts/editor/PhotoActionPopup$Listener;)Landroid/view/View$OnClickListener;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactData"    # Lcom/android/contacts/ContactLoader$Result;
    .param p3, "photoView"    # Lcom/sec/android/app/contacts/widget/AnimatableImageView;
    .param p4, "expandPhotoOnClick"    # Z
    .param p5, "listener"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    .prologue
    .line 52
    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getId()J

    move-result-wide v0

    invoke-virtual {p0, p3, v0, v1}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setTarget(Lcom/sec/android/app/contacts/widget/AnimatableImageView;J)V

    .line 56
    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getPhotoBinaryData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setCompressedImage([B)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "bitmap":Landroid/graphics/Bitmap;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupClickListener(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/graphics/Bitmap;ZLcom/android/contacts/editor/PhotoActionPopup$Listener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method
