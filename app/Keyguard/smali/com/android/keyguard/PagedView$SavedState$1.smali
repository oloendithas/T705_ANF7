.class final Lcom/android/keyguard/PagedView$SavedState$1;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PagedView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/keyguard/PagedView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/keyguard/PagedView$SavedState;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2049
    new-instance v0, Lcom/android/keyguard/PagedView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/PagedView$SavedState;-><init>(Landroid/os/Parcel;Lcom/android/keyguard/PagedView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 2047
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/keyguard/PagedView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/keyguard/PagedView$SavedState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 2053
    new-array v0, p1, [Lcom/android/keyguard/PagedView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 2047
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView$SavedState$1;->newArray(I)[Lcom/android/keyguard/PagedView$SavedState;

    move-result-object v0

    return-object v0
.end method