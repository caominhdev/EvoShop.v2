//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Account
{
    public Account()
    {
        this.Articles = new HashSet<Article>();
        this.ArticleCategories = new HashSet<ArticleCategory>();
        this.ClientCategories = new HashSet<ClientCategory>();
        this.Contacts = new HashSet<Contact>();
        this.ContactCategories = new HashSet<ContactCategory>();
        this.Pictures = new HashSet<Picture>();
        this.PictureCategories = new HashSet<PictureCategory>();
        this.Products = new HashSet<Product>();
        this.ProductCategories = new HashSet<ProductCategory>();
        this.ProductMainCategories = new HashSet<ProductMainCategory>();
    }

    public string Username { get; set; }
    public string Password { get; set; }
    public string Avatar { get; set; }
    public string Thumb { get; set; }
    public string FullName { get; set; }
    public string Email { get; set; }
    public string Mobile { get; set; }
    public string Address { get; set; }
    public Nullable<bool> Status { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }
    public string AccountCategoryID { get; set; }

    public virtual AccountCategory AccountCategory { get; set; }
    public virtual ICollection<Article> Articles { get; set; }
    public virtual ICollection<ArticleCategory> ArticleCategories { get; set; }
    public virtual ICollection<ClientCategory> ClientCategories { get; set; }
    public virtual ICollection<Contact> Contacts { get; set; }
    public virtual ICollection<ContactCategory> ContactCategories { get; set; }
    public virtual ICollection<Picture> Pictures { get; set; }
    public virtual ICollection<PictureCategory> PictureCategories { get; set; }
    public virtual ICollection<Product> Products { get; set; }
    public virtual ICollection<ProductCategory> ProductCategories { get; set; }
    public virtual ICollection<ProductMainCategory> ProductMainCategories { get; set; }
}

public partial class AccountCategory
{
    public AccountCategory()
    {
        this.Accounts = new HashSet<Account>();
    }

    public string AccountCategoryID { get; set; }
    public string Avatar { get; set; }
    public string Thumb { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string Code { get; set; }
    public Nullable<int> Position { get; set; }
    public Nullable<bool> Status { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }

    public virtual ICollection<Account> Accounts { get; set; }
}

public partial class Article
{
    public int ArticleID { get; set; }
    public string Avatar { get; set; }
    public string Thumb { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string Content { get; set; }
    public Nullable<int> Position { get; set; }
    public Nullable<bool> Status { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }
    public Nullable<int> ArticleCategoryID { get; set; }
    public string CreateBy { get; set; }
    public Nullable<int> Views { get; set; }

    public virtual Account Account { get; set; }
    public virtual ArticleCategory ArticleCategory { get; set; }
}

public partial class ArticleCategory
{
    public ArticleCategory()
    {
        this.Articles = new HashSet<Article>();
    }

    public int ArticleCategoryID { get; set; }
    public string Avatar { get; set; }
    public string Thumb { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string Code { get; set; }
    public Nullable<int> Position { get; set; }
    public Nullable<bool> Status { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }
    public string CreateBy { get; set; }

    public virtual Account Account { get; set; }
    public virtual ICollection<Article> Articles { get; set; }
}

public partial class Client
{
    public Client()
    {
        this.Orders = new HashSet<Order>();
        this.ProductComments = new HashSet<ProductComment>();
        this.ProductVotes = new HashSet<ProductVote>();
    }

    public int ClientID { get; set; }
    public string Email { get; set; }
    public string Password { get; set; }
    public string FullName { get; set; }
    public string Mobile { get; set; }
    public string Address { get; set; }
    public Nullable<bool> Status { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }
    public Nullable<int> ClientCategoryID { get; set; }

    public virtual ClientCategory ClientCategory { get; set; }
    public virtual ICollection<Order> Orders { get; set; }
    public virtual ICollection<ProductComment> ProductComments { get; set; }
    public virtual ICollection<ProductVote> ProductVotes { get; set; }
}

public partial class ClientCategory
{
    public ClientCategory()
    {
        this.Clients = new HashSet<Client>();
    }

    public int ClientCategoryID { get; set; }
    public string Avatar { get; set; }
    public string Thumb { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string Code { get; set; }
    public Nullable<int> Position { get; set; }
    public Nullable<bool> Status { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }
    public string CreateBy { get; set; }

    public virtual Account Account { get; set; }
    public virtual ICollection<Client> Clients { get; set; }
}

public partial class Contact
{
    public int ContactID { get; set; }
    public string FullName { get; set; }
    public string Mobile { get; set; }
    public string Email { get; set; }
    public string Address { get; set; }
    public string Content { get; set; }
    public Nullable<bool> Status { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }
    public Nullable<int> ContactCategoryID { get; set; }
    public string ApproveBy { get; set; }

    public virtual Account Account { get; set; }
    public virtual ContactCategory ContactCategory { get; set; }
}

public partial class ContactCategory
{
    public ContactCategory()
    {
        this.Contacts = new HashSet<Contact>();
    }

    public int ContactCategoryID { get; set; }
    public string Avatar { get; set; }
    public string Thumb { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string Code { get; set; }
    public Nullable<int> Position { get; set; }
    public Nullable<bool> Status { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }
    public string CreateBy { get; set; }

    public virtual Account Account { get; set; }
    public virtual ICollection<Contact> Contacts { get; set; }
}

public partial class Order
{
    public Order()
    {
        this.OrderDetails = new HashSet<OrderDetail>();
    }

    public int OrderID { get; set; }
    public string FullName { get; set; }
    public string Mobile { get; set; }
    public string Address { get; set; }
    public Nullable<double> Total { get; set; }
    public Nullable<double> Bonus { get; set; }
    public Nullable<double> Amount { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }
    public Nullable<bool> OrderStatus { get; set; }
    public Nullable<bool> ConfirmStatus { get; set; }
    public Nullable<bool> ChargeStatus { get; set; }
    public Nullable<bool> DeliveStatus { get; set; }
    public Nullable<int> ClientID { get; set; }

    public virtual Client Client { get; set; }
    public virtual ICollection<OrderDetail> OrderDetails { get; set; }
}

public partial class OrderDetail
{
    public int OrderID { get; set; }
    public int ProductID { get; set; }
    public Nullable<int> Quantity { get; set; }
    public Nullable<double> Price { get; set; }

    public virtual Order Order { get; set; }
    public virtual Product Product { get; set; }
}

public partial class Picture
{
    public int PictureID { get; set; }
    public string Avatar { get; set; }
    public string Thumb { get; set; }
    public string ImageList { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string Url { get; set; }
    public Nullable<int> Position { get; set; }
    public Nullable<bool> Status { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }
    public Nullable<int> PictureCategoryID { get; set; }
    public string CreateBy { get; set; }

    public virtual Account Account { get; set; }
    public virtual PictureCategory PictureCategory { get; set; }
}

public partial class PictureCategory
{
    public PictureCategory()
    {
        this.Pictures = new HashSet<Picture>();
    }

    public int PictureCategoryID { get; set; }
    public string Avatar { get; set; }
    public string Thumb { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string Code { get; set; }
    public Nullable<int> Position { get; set; }
    public Nullable<bool> Status { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }
    public string CreateBy { get; set; }

    public virtual Account Account { get; set; }
    public virtual ICollection<Picture> Pictures { get; set; }
}

public partial class Product
{
    public Product()
    {
        this.OrderDetails = new HashSet<OrderDetail>();
        this.ProductComments = new HashSet<ProductComment>();
        this.ProductVotes = new HashSet<ProductVote>();
    }

    public int ProductID { get; set; }
    public string Avatar { get; set; }
    public string Thumb { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string Code { get; set; }
    public string Specification { get; set; }
    public string Content { get; set; }
    public string Warranty { get; set; }
    public string Accessories { get; set; }
    public Nullable<double> Price { get; set; }
    public Nullable<double> OldPrice { get; set; }
    public Nullable<int> Quantity { get; set; }
    public string ImageList { get; set; }
    public Nullable<int> Position { get; set; }
    public Nullable<bool> Status { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }
    public Nullable<int> ProductCategoryID { get; set; }
    public string CreateBy { get; set; }

    public virtual Account Account { get; set; }
    public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    public virtual ProductCategory ProductCategory { get; set; }
    public virtual ICollection<ProductComment> ProductComments { get; set; }
    public virtual ICollection<ProductVote> ProductVotes { get; set; }
}

public partial class ProductCategory
{
    public ProductCategory()
    {
        this.Products = new HashSet<Product>();
    }

    public int ProductCategoryID { get; set; }
    public string Avatar { get; set; }
    public string Thumb { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string Code { get; set; }
    public Nullable<int> Position { get; set; }
    public Nullable<bool> Status { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }
    public Nullable<int> ProductMainCategoryID { get; set; }
    public string CreateBy { get; set; }

    public virtual Account Account { get; set; }
    public virtual ICollection<Product> Products { get; set; }
    public virtual ProductMainCategory ProductMainCategory { get; set; }
}

public partial class ProductComment
{
    public int ProductCommentID { get; set; }
    public string Content { get; set; }
    public Nullable<bool> Status { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }
    public Nullable<int> ClientID { get; set; }
    public Nullable<int> ProductID { get; set; }

    public virtual Client Client { get; set; }
    public virtual Product Product { get; set; }
}

public partial class ProductMainCategory
{
    public ProductMainCategory()
    {
        this.ProductCategories = new HashSet<ProductCategory>();
    }

    public int ProductMainCategoryID { get; set; }
    public string Avatar { get; set; }
    public string Thumb { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string Code { get; set; }
    public Nullable<int> Position { get; set; }
    public Nullable<bool> Status { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }
    public string CreateBy { get; set; }

    public virtual Account Account { get; set; }
    public virtual ICollection<ProductCategory> ProductCategories { get; set; }
}

public partial class ProductVote
{
    public int ClientID { get; set; }
    public int ProductID { get; set; }
    public Nullable<System.DateTime> CreateTime { get; set; }
    public Nullable<int> Value { get; set; }

    public virtual Client Client { get; set; }
    public virtual Product Product { get; set; }
}
