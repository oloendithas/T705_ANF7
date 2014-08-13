.class Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISnsFacebookForAuthToken.java"

# interfaces
.implements Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 62
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAuthTokenNExpires()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 74
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 77
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.sec.android.app.sns3.svc.sp.facebook.auth.api.ISnsFacebookForAuthToken"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 78
    iget-object v4, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 79
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 81
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 84
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 85
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 87
    return-object v2

    .line 84
    .end local v2    # "_result":Ljava/util/Map;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 85
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "com.sec.android.app.sns3.svc.sp.facebook.auth.api.ISnsFacebookForAuthToken"

    return-object v0
.end method
