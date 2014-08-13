.class public Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;
.super Ljava/lang/Object;
.source "ImsContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/eab/ImsContactAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestType"
.end annotation


# instance fields
.field contactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

.field typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1040
    .local p3, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    iput-object p2, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->typeName:Ljava/lang/String;

    .line 1042
    iput-object p3, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->contactList:Ljava/util/ArrayList;

    .line 1043
    return-void
.end method


# virtual methods
.method public getContactList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->contactList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$RequestType;->typeName:Ljava/lang/String;

    return-object v0
.end method
