.class Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;
.super Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvatarDefaultImageProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ContactPhotoManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/ContactPhotoManager$1;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;IZJ)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "extent"    # I
    .param p3, "darkTheme"    # Z
    .param p4, "contactId"    # J

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(Landroid/content/Context;IZJ)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    return-void
.end method
