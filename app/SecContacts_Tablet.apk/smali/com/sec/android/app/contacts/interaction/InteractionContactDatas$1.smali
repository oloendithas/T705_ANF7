.class final Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$1;
.super Ljava/lang/Object;
.source "InteractionContactDatas.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 273
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    invoke-direct {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 277
    new-array v0, p1, [Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$1;->newArray(I)[Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    move-result-object v0

    return-object v0
.end method
