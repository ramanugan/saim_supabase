-- ==============================================================================
-- SAIM - Semilla Inicial de Permisos (Catálogo Base)
-- ==============================================================================

INSERT INTO public.permissions (module, action, description) VALUES
-- Módulo Usuarios
('usuarios', 'ver', 'Ver la lista de usuarios'),
('usuarios', 'crear', 'Registrar un nuevo usuario'),
('usuarios', 'editar', 'Modificar perfil y roles de usuario'),
('usuarios', 'eliminar', 'Eliminar o deshabilitar usuario'),

-- Módulo Catálogos
('catalogos', 'ver', 'Consultar catálogos del sistema'),
('catalogos', 'crear', 'Agregar elementos a los catálogos'),
('catalogos', 'editar', 'Modificar elementos de catálogos'),
('catalogos', 'eliminar', 'Eliminar elementos de catálogos'),

-- Módulo Orden de Campo
('orden_campo', 'ver', 'Ver las órdenes de campo'),
('orden_campo', 'crear', 'Crear una nueva orden de campo'),
('orden_campo', 'editar', 'Modificar o reasignar orden de campo'),
('orden_campo', 'eliminar', 'Cancelar o eliminar orden de campo'),

-- Módulo Contratos
('contratos', 'ver', 'Consultar detalles de contratos'),
('contratos', 'crear', 'Dar de alta un nuevo contrato'),
('contratos', 'editar', 'Modificar alcance y zonas del contrato'),
('contratos', 'eliminar', 'Dar de baja un contrato')

ON CONFLICT (module, action) DO NOTHING;
