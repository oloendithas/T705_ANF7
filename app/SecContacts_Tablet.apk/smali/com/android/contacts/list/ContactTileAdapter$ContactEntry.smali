.class public Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;
.super Ljava/lang/Object;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactEntry"
.end annotation


# instance fields
.field public contactId:J

.field public contactLink:Ljava/lang/String;

.field public hasEmail:I

.field public hasPhoneNumber:I

.field public isUserProfile:I

.field public lookupKey:Ljava/lang/String;

.field public lookupKeyUri:Landroid/net/Uri;

.field public name:Ljava/lang/String;

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoId:J

.field public photoUri:Landroid/net/Uri;

.field public presenceIcon:Landroid/graphics/drawable/Drawable;

.field public starred:I

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
