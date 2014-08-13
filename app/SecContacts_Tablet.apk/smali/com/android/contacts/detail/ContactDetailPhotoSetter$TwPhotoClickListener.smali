.class final Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;
.super Ljava/lang/Object;
.source "ContactDetailPhotoSetter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailPhotoSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TwPhotoClickListener"
.end annotation


# instance fields
.field private final mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private final mContext:Landroid/content/Context;

.field private final mExpandPhotoOnClick:Z

.field private final mListener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

.field private final mPhotoBitmap:Landroid/graphics/Bitmap;

.field private final mPhotoBytes:[B

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailPhotoSetter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailPhotoSetter;Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/graphics/Bitmap;[BZLcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "contactData"    # Lcom/android/contacts/ContactLoader$Result;
    .param p4, "photoBitmap"    # Landroid/graphics/Bitmap;
    .param p5, "photoBytes"    # [B
    .param p6, "expandPhotoOnClick"    # Z
    .param p7, "listener"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->this$0:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mContext:Landroid/content/Context;

    .line 126
    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 127
    iput-object p4, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mPhotoBitmap:Landroid/graphics/Bitmap;

    .line 128
    iput-object p5, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mPhotoBytes:[B

    .line 129
    iput-boolean p6, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mExpandPhotoOnClick:Z

    .line 130
    iput-object p7, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mListener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    .line 131
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mListener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_1

    .line 136
    const/4 v5, 0x0

    .line 137
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getPhotoBinaryData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mPhotoBitmap:Landroid/graphics/Bitmap;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->this$0:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mListener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$TwPhotoClickListener;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isPrivateContact()Z

    move-result v4

    move-object v2, p1

    # invokes: Lcom/android/contacts/detail/ContactDetailPhotoSetter;->showPhotoActionPopup(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;ZLandroid/graphics/Bitmap;)V
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->access$000(Lcom/android/contacts/detail/ContactDetailPhotoSetter;Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;ZLandroid/graphics/Bitmap;)V

    .line 142
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method
